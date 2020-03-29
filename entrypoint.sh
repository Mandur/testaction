#!/bin/bash
echo 'start processing'
echo $iothub_connection_string
iotedgedev setup -i $iothub_connection_string   
