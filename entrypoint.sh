#!/bin/bash
echo 'start processing'
echo $PKT_FWD_VERSION
sudo iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

