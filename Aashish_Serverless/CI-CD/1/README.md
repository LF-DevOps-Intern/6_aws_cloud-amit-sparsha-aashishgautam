### Create a bash script to deploy your lambda functions

#### First, we write a basch script to deploy the lambda functions.
```
nano lambda-func.sh
```
```
#!/bin/bash

#create lamda.py
echo "import json

def lambda_handler(event, context):
    # TODO implement
    return {
	'statusCode': 200,
        'body': json.dumps({"Hello":"Aashish"})
    }" > lamda.py
#zip
zip lamda.zip lamda.py

#create fuction

aws lambda create-function 
--function-name aashish-deployment 
--runtime python3.9 --zip-file fileb://lamda.zip 
--role arn:aws:iam::949263681218:role/service-role/aashish-api1-role-tota7vd0 --handler lamda.lambda_handler  
--profile lft-training
```
![basch script to deploy lambda function](https://user-images.githubusercontent.com/24239688/146279855-00d49a55-cbb7-40ed-81f3-4fee1adf4e91.PNG)

#### Next, we give executive permission to the bash file.
```
chmod +x lambda-func.sh
```

![lambda sh file given executive permission](https://user-images.githubusercontent.com/24239688/146279875-0e960263-bccb-49e6-b6b7-e848bef50ffe.PNG)

#### Then, we run the bash scipt as follows;
```
./lambda-func.sh
```

![running bash script](https://user-images.githubusercontent.com/24239688/146279879-cd3986d4-541a-4672-90d2-a1e09d9f46ff.PNG)

#### We verify the created function via Lambda functions as follows;

![function wwas created successfully](https://user-images.githubusercontent.com/24239688/146279887-a2c66687-9f18-40c0-a0c0-9c7dcecc4aba.PNG)

#### We can verify the code.

![verifying code](https://user-images.githubusercontent.com/24239688/146279907-d32f8f90-c185-4dd6-8070-bd9b9c3d8b52.PNG)

#### Also, we can the test the code deployed through bash script.

![test event results](https://user-images.githubusercontent.com/24239688/146279910-953ec4df-bcba-4955-b44e-0285672140a0.PNG)
