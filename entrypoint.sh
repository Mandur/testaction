#!/bin/bash
echo 'start processing'
sudo iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

