#!/bin/bash
echo 'start processing'
echo $iothub_connection_string
ls /home/runner/work/testaction/testaction/lora
echo "***"
iotedgedev build -f /home/runner/work/testaction/testaction/lora/LoRaEngine/deployment.test.template.json

