2. **Create a bash script to deploy your lambda functions**
- **Create a bash script to deploy your react app to S3**
- **Integrate both these scripts with one of Jenkins, Github Actions, CircleCI or TravisCI**

**Steps:**<br/>
**Create lamda.sh**<br/>
```
sudo nano lamda.sh
```
![create](https://user-images.githubusercontent.com/53372486/146252519-1ae46f99-f407-4679-862c-974816aaef39.png)<br/>

**Add below line in lamda.sh**<br/>
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

**Give execute permission**<br/>
```
chmod +x lamda.sh 
```
**Run script**<br/>
```
./lamda.sh
```
![run](https://user-images.githubusercontent.com/53372486/146252067-ab750bf0-40df-44fb-a21b-1dba9dafab62.png)<br/>

![update](https://user-images.githubusercontent.com/53372486/146252068-ac527ca1-906e-4c50-8256-cf5e68ce5b26.png)<br/>

**Now check in aws lamda**<br/>

![fuction](https://user-images.githubusercontent.com/53372486/146252062-36551da2-3ab9-4947-8354-a54cb6744325.png)<br/>

**And open fuction and test it**<br/>

![lamda](https://user-images.githubusercontent.com/53372486/146252065-1b3a33bf-3f63-422e-8c3c-e33987be471f.png)<br/>

![execute](https://user-images.githubusercontent.com/53372486/146252057-18478125-9428-4424-b08e-968fef359cc7.png)<br/>

----------------------------------------------------------------------------------------------------------------------------<br/>
### reate a bash script to deploy your react app to S3
**Create deploy script**<br/>
```
nano react.sh
```
![createreact](https://user-images.githubusercontent.com/53372486/146342751-f1f05fea-6e0c-409f-a559-1ab9fafb203d.png)<br/>

**Add below line in react.sh**<br/>
```
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
```
![reactsh](https://user-images.githubusercontent.com/53372486/146342782-540c8a59-c597-4ff3-919e-9f673ef098a8.png)<br/>

**Create policy json**<br/>
```
nano policy.json
```
**Add below line in policy.json**<br/>
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::rabindra-deploy/*"
        }
    ]
}
```
![json](https://user-images.githubusercontent.com/53372486/146342768-ba00ad50-0296-4510-9b55-b1e325221dc4.png)<br/>

**Run deploy script**<br/>
```
./react.sh 
```
![reactsh1](https://user-images.githubusercontent.com/53372486/146344486-76fa4d02-8d9b-4df5-ab74-a21deb918c32.png)<br/>

![reactsh2](https://user-images.githubusercontent.com/53372486/146342788-2786226b-1d58-455a-9d50-9effe3315706.png)<br/>

**Checking bucket** <br/>

![bucket name](https://user-images.githubusercontent.com/53372486/146342725-5ea4d844-d417-4124-a6dd-ed9acb1fe793.png)<br/>

**Checking file uplaod**<br/>

![bucket](https://user-images.githubusercontent.com/53372486/146342734-eda752f8-1d76-413a-8722-b184cb970275.png)<br/>

**Checking policy**<br/>

![checking policy](https://user-images.githubusercontent.com/53372486/146342743-5e679410-e54c-4785-8bef-cf9762bdaf99.png)<br/>

**Open object url https://rabindra-deploy.s3.amazonaws.com/index.html**<br/>

![web](https://user-images.githubusercontent.com/53372486/146342844-3260471a-0f3f-41de-b5c3-7b3787ae3066.png)<br/>

-----------------------------------------------------------------------------------------------------------------<br/>
### Integrate both these scripts with one of Jenkins, Github Actions, CircleCI or TravisCI








