### Create a bash script to deploy your lambda functions

#### First, we change the directory to lf-react where our react app resides. Then, we open react.sh file using text editor as follows;

```
cd lf-react
nano react.sh
```

```
#!/bin/bash

# Syncing all files
echo "Uploading files to aashish-react..."
aws s3 sync build s3://aashish-react --profile lft-training

# Upload index.html
echo "Uploading index.html"
aws s3 cp build/index.html s3://aashish-react/index.html --profile lft-training

# Generating presigned URL
echo "Generating presigned URL"
aws s3 presign s3://aashish-react/index.html --profile lft-training
```

![bash script to deploy react app to s3](https://user-images.githubusercontent.com/24239688/146278854-75720d9a-72be-4216-81fd-ad6d77fc848a.PNG)

#### Next, we provide executive permission to the bash and run it as follows;

```
chmod +x react.sh
./react.sh
```

![run bash script](https://user-images.githubusercontent.com/24239688/146278870-364228de-6557-4606-ba91-21dabc9b3678.PNG)

#### Now, we get the presigned URL and can verify the link via web browser.

![presigned url generated](https://user-images.githubusercontent.com/24239688/146278915-8aa68944-6dd0-4853-b614-5137016dcddd.PNG)

#### The presigned link was verified via web browser.

![verified via presigned url](https://user-images.githubusercontent.com/24239688/146278930-5da7cb42-dd4a-4ca2-87be-94e6ef574657.PNG)

#### Lastly, we can verify the deployed react app via S3 bucket too.

![verified via s3 bucket](https://user-images.githubusercontent.com/24239688/146278934-d17f01a1-9853-49e4-9991-f7296c2e030c.PNG)
