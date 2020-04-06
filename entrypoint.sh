#!/bin/bash
# First argument is name of env var, second is default value.
ensureEnvironmentVariableIsThere () {
    if [ -z "${!1}" ]; then
        echo "Environment Variable $1 not found, defaulting to $2"
        export $1=$2
    fi
}

ensureEnvironmentVariableIsThere "templateFilePath" "deployment.template.json"
ensureEnvironmentVariableIsThere "defaultPlatform" "amd64"

if [ $1 = "build" ]; then
    echo "Building iot edge module"
    sudo -E iotedgedev $1 -f $2
elif [ $1 = "push" ]; then
    echo "Pushing iot edge module"
    sudo -E iotedgedev $1 -f $2
elif [ $1 = "deploy" ]; then
    echo "Deploying iot edge module"
    envsubst < $2
    iot edge deployment delete --login "$IOTHUB_CONNECTION_STRING" --config-id "$IOT_EDGE_DEPLOYMENT_ID"
    az iot edge deployment create --login "$IOTHUB_CONNECTION_STRING" --content $2 --config-id "$IOT_EDGE_DEPLOYMENT_ID" --target-condition "deviceId=$DEVICE_ID"
fi

#push

#deploy