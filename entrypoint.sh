#!/bin/bash
echo 'start processing'
ls $GITHUB_WORKSPACE
sudo iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

