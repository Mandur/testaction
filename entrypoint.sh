#!/bin/bash
echo 'start processing'
echo $iothub_connection_string
ls /github/home

echo "***"
ls /github/workspace

echo "***"
ls /github/workflow
# iotedgedev setup -i $iothub_connection_string   
