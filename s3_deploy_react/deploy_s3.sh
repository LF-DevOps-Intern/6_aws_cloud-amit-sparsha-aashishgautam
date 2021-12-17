#!/bin/bash

aws s3api create-bucket \
	--bucket final-bucket-s3 \
	--region us-east-1 \
	--acl public-read 





aws s3 website "s3://final-bucket-s3" \
	--index-document index.html \
	--error-document index.html 

aws s3api put-bucket-policy   --bucket final-bucket-s3 --policy file://./policy.json


aws s3 sync /home/durbs/task/new_deploy/task/build/  "s3://final-bucket-s3"
