#!/bin/bash

#create lamda.py
echo "import json

def lambda_handler(event, context):
    # TODO implement
    return {
	'statusCode': 200,
        'body': json.dumps({"Hello":"rabindra"})
    }" > lamda.py
#zip
zip lamda.zip lamda.py

#create fuction

aws lambda create-function --function-name rabindra-deployment --runtime python3.9 --zip-file fileb://lamda.zip --role arn:aws:iam::949263681218:role/service-role/rabindra-api-role-lmiu2v86 --handler lamda.lambda_handler  --profile lft-training


