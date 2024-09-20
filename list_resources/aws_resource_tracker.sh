#!/bin/bash
#
####################################
##Author: Shweta
##date: 18-09-24
#
##version: v1
#
##This script will report the AWS resource usage
##############################################
##
## AWS S3    # AWS Ec2   # AWS Lambda  # AWS IAM Users
#

 set -x

# #list s3 buckets
   echo "Print the list of s3 buckets" 
   aws s3 ls  >  resource.txt

#  #list EC2 Instances
   echo "Print the list of ec2 Instances"
   aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource.txt


   #list the list of vpcs
   echo "Print the list of vpcs"
   aws ec2 describe-vpcs | jq '.Vpcs[].VpcId'  >> resource.txt


  #list lambda functions
   echo "Print the list of ec2 Instances"
   aws lambda list-functions  >> resource.txt

   #list IAM users
   echo "IAM users"
   aws iam list-users >> resource.txt

