1. Write a script that backs up an SQL dump and uploads it to an S3 Bucket. The contents of the S3 bucket should not be accessible via public.
2. Create a Lambda function that is triggered by an object being uploaded to an S3 bucket. If the object’s name starts with make_public, ensure that the object is publicly accessible.
3. Host a react application on an S3 Bucket and deliver it through cloudfront.
4. Create two Lambda Functions
- First Lambda function returns 200 Response as {“Hello”: “Default”}
- Second Lambda function returns 200 Response as {“Hello”: “{Dynamic route name}”}
- Configure API Gateway with that hits first lambda function on / and the second lambda function on /*

5. Create a bash script to deploy your lambda functions
- Create a bash script to deploy your react app to S3
- Integrate both these scripts with one of Jenkins, Github Actions, CircleCI or TravisCI
