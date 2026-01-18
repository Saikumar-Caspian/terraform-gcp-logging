#!/bin/bash

LOG_FILE="/var/log/custom-app.log"

echo "VM started at $(date)" >> $LOG_FILE

apt-get update -y
apt-get install -y google-cloud-cli

gsutil cp $LOG_FILE gs://${bucket_name}/vm-logs/custom-app.log
