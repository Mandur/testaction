#!/bin/bash
sudo -E printenv
sudo -E iotedgedev $1 -f $2

# First argument is name of env var, second is default value.
# ensureEnvironmentVariableIsThere () {
#     if [ -z "${!1}" ]; then
#         echo "Environment Variable $1 not found, defaulting to $2"
#         export $1=$2
#     fi
# }

# echo 'start processing'
# echo "command : $Command"
# echo "$GITHUB_WORKSPACE"
# if [ -z "$Command" ]; then
#     Command="Build"
# fi

# ls

# if [ $Command = "Build" ]; then
#     ensureEnvironmentVariableIsThere "templateFilePath" "deployment.template.json"
#     ensureEnvironmentVariableIsThere "defaultPlatform" "amd64"
#     sudo iotedgedev build -f $templateFilePath -P $defaultPlatform
# elif [ $Command = "Push" ]
# elif [ $Command = "Deploy" ]
# fi

#push

#deploy