#!/bin/bash
echo 'start processing'
sudo echo $CONTAINER_REGISTRY_ADDRESS
sudo echo $PKT_FWD_VERSION
sudo iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

