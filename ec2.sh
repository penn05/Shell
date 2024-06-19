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

#Loading EC2 instance details to ec2.txt
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > ec2.txt

#Getting S3 buckets details and loading to s3.txt
aws s3 ls > s3.txt

#Getting lambda function details and loading to lambda.txt
aws lambda list-functions > lambda.txt

#Getting IAM user details and storing it into iam.txt
aws iam list-users > iam.txt
