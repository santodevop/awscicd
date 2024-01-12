#!/bin/bash
set -e

sudo apt update

sudo apt install ruby-full

sudo apt install wget

cd /home/ubuntu

wget https://bucket-name.s3.region-identifier.amazonaws.com/latest/install

#replace "bucket-name" with your bucket region name ex. "aws-codedeploy-ap-south-1"
#and "rigion-identifier" with your region name ex. "ap-south-1"

chmod +x ./install

sudo ./install auto

sudo service codedeploy-agent status

sudo service codedeploy-agent start

sudo service codedeploy-agent restart