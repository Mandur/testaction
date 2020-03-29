#!/bin/bash
echo 'start processing'
echo $CONTAINER_REGISTRY_ADDRESS
sudo iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

