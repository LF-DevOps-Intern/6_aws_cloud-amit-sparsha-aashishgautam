2. Create a bash script to deploy your lambda functions
- Create a bash script to deploy your react app to S3
- Integrate both these scripts with one of Jenkins, Github Actions, CircleCI or TravisCI

Steps:<br/>
Create lamda.sh<br/>
```
sudo nano lamda.sh
```
![create](https://user-images.githubusercontent.com/53372486/146252519-1ae46f99-f407-4679-862c-974816aaef39.png)<br/>

Add below line in lamda.sh<br/>
```
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
```
![lamda sh](https://user-images.githubusercontent.com/53372486/146252066-4c72ba59-e656-442a-b142-778f38fb0272.png)<br/>

Give execute permission<br/>
```
chmod +x lamda.sh 
```
Run script<br/>
```
./lamda.sh
```
![run](https://user-images.githubusercontent.com/53372486/146252067-ab750bf0-40df-44fb-a21b-1dba9dafab62.png)<br/>

![update](https://user-images.githubusercontent.com/53372486/146252068-ac527ca1-906e-4c50-8256-cf5e68ce5b26.png)<br/>

Now check in aws lamda<br/>

![fuction](https://user-images.githubusercontent.com/53372486/146252062-36551da2-3ab9-4947-8354-a54cb6744325.png)<br/>

And open fuction and test it<br/>

![lamda](https://user-images.githubusercontent.com/53372486/146252065-1b3a33bf-3f63-422e-8c3c-e33987be471f.png)<br/>

![execute](https://user-images.githubusercontent.com/53372486/146252057-18478125-9428-4424-b08e-968fef359cc7.png)<br/>





