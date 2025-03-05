#!/bin/bash
cd /home/ubuntu  # Ensure correct directory
sudo rm -rf LMS-Nodejs-MYSQL
mkdir -p LMS-Nodejs-MYSQL
cd LMS-Nodejs-MYSQL

# AWS S3 Download
aws s3 cp s3://libappartifactbucket/libapp2ndbranch/libappbuild.zip nodejs-app.zip

# Unzip
unzip -o nodejs-app.zip
ls -l