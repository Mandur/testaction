#!/bin/bash
echo 'start processing'
echo $iothub_connection_string
ls $GITHUB_WORKSPACE
echo "***"
iotedgedev build -f $GITHUB_WORKSPACE/lora/LoRaEngine/deployment.test.template.json

