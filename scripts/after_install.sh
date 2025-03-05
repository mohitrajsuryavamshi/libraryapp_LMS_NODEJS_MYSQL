#!/bin/bash

echo "Stopping any running Node.js processes..."
pkill -f "node app.js" || true

echo "Navigating to the app directory..."
cd /home/ubuntu/LMS-Nodejs-MYSQL

echo "Installing dependencies..."
npm install

echo "Starting the application..."
nohup node app.js > output.log 2>&1 &