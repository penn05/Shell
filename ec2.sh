#!/bin/bash



#################################################
# Author: Venkanna 
# Date: 17/06/2024
#
#
# Version: v1
#
#
# This bash script will give details about AWS resource usage


#running in debug mode
set -x

#printing EC2 instance details
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
