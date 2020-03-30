#!/bin/bash
echo 'start processing'
echo $CONTAINER_REGISTRY_ADDRESS
echo $PKT_FWD_VERSION
iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

