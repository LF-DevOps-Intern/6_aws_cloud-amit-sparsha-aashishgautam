#!/bin/bash

aws lambda create-function \
	--function-name "lambda_function_manip" \
	--runtime "python3.9" \
	--role "arn:aws:iam::949263681218:role/service-role/manip-s3" \
	--handler "lambda_function_manip.lambda_handler" \
	--timeout 5 \
	--zip-file "fileb://./lambda_function_manip.zip" \
	--region "us-east-1"
