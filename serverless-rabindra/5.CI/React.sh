#!/bin/bash

#create bucket
aws s3api create-bucket --bucket rabindra-deploy --region us-east-1 --profile lft-training

#aws configure --profile lft-training

#make bucket public
aws s3api put-public-access-block \
    --bucket rabindra-deploy \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false" 


#put policy
aws s3api put-bucket-policy \
  --profile lft-training \
  --bucket rabindra-deploy \
  --policy file://policy.json


#make build
npm run build

#deploy in s3 
aws s3 sync build s3://rabindra-deploy --profile lft-training

#host static
aws s3 website s3://rabindra-deploy --index-document index.html --error-document error.html