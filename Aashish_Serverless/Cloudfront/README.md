### Host a react application on an S3 Bucket and deliver it through cloudfront.

#### First of all, we need to enable node.js yum repository in our system provided by the Node.js official website. We also need development tools to build native add-ons to be installed on our system. We use followinf commands;
```
sudo yum install -y gcc-c++ make 

```

![repo data downloaded](https://user-images.githubusercontent.com/24239688/146064166-6fa9b715-f31c-4c04-bdfe-dd97bfc49d1b.PNG)

![gcc installed successfully](https://user-images.githubusercontent.com/24239688/146064309-49b3fd73-98b7-4a92-bd45-e46b0d0bd458.PNG)

#### Next, we install nodejs as follows;
```
curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash - 
```
![nodejs installed](https://user-images.githubusercontent.com/24239688/146064476-12df0961-8360-4071-ad69-d37ad0996759.PNG)

#### To check the nodejs and npm version we use;
```
node -v
npm -v
```

![node and npm versions](https://user-images.githubusercontent.com/24239688/146064488-e41fec57-7a54-4629-a029-0098724261cc.PNG)

#### Next, we create react app using the following command;
```
npm -g install create-react-app
create-react-app lf-react
```

![react app created](https://user-images.githubusercontent.com/24239688/146064384-3dc61ab6-32a9-4a57-8d26-20a6c020862a.PNG)

#### Next, we change the directory to lf-react and start the npm as follows;
```
cd lf-react
npm start
```

![npm started](https://user-images.githubusercontent.com/24239688/146064524-3ccdb6ca-3a1d-4cb1-a29c-49dfb3bfdeb9.PNG)

#### Next, we run the build as follows;
```
npm run build
```

![npm rum build](https://user-images.githubusercontent.com/24239688/146064541-cd7433d3-6e64-490b-a185-c47ffb796f62.PNG)

#### Now, we create S3 bucket for the react app to store static files.

![creating s3 bucket](https://user-images.githubusercontent.com/24239688/146064817-3c8e3065-2554-4ce3-8841-da7299b0871b.PNG)

#### Object ownership's ACLs was enabled with bucket owner preferred.

![edited object ownership](https://user-images.githubusercontent.com/24239688/146064855-ad20287e-a84f-4a95-87f2-b32986697d14.PNG)

#### Public access was enabled as follows;

![public access allowed](https://user-images.githubusercontent.com/24239688/146064957-88c50bcc-48ce-4237-8e6a-77b68eabfc70.PNG)

#### Other setting was set as default.

![other s3 config set to default](https://user-images.githubusercontent.com/24239688/146065008-e2df10a8-769f-4ae4-8a34-195b971096db.PNG)

#### S3 bucket named _aashish-react_ was created successfully.

![s3 bucket created successfully](https://user-images.githubusercontent.com/24239688/146065134-ac524711-83f3-4219-b842-ef9add74959c.PNG)

#### Now, we edit the bucket policy for making all objects public inside the s3 bucket.
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::aashish-react/*"
        }
    ]
}
```

![bucket policy edited](https://user-images.githubusercontent.com/24239688/146065238-70134bd0-c2df-4d09-9839-4ad4a919e67f.PNG)

#### S3 bucket named _aashish-react_ was publicly accessible after editing the policy.

![bucket policy added successfully](https://user-images.githubusercontent.com/24239688/146065247-dc3c3a8d-7258-498c-a535-593e2f7e9943.PNG)

#### Next, we sync up the build directory of react app with s3 bucket as follows;

```
aws configure --profile lft-training
aws s3 sync build s3://aashish-react --profile lft-training
```

![aws s3 sync](https://user-images.githubusercontent.com/24239688/146065415-408bbfca-08a2-4662-88bf-b270fe26cb63.PNG)

#### React app verified working via web browser.

![react app working](https://user-images.githubusercontent.com/24239688/146065465-36c2c967-787c-4567-8e7e-feeaf07b4a2d.PNG)

#### Next, we edit static web hosting inside our s3 bucket as follows;

![static web hosting edited](https://user-images.githubusercontent.com/24239688/146065513-40a34800-f527-4e13-a545-366c01a2c346.PNG)

#### Static website hosting was edited successfully.

![static web hosting done](https://user-images.githubusercontent.com/24239688/146065584-9b964308-e811-4a32-b09e-1437d62a1e32.PNG)

#### Then, we verified that react app was working fine via static website link as follows;

![verified via static web page link](https://user-images.githubusercontent.com/24239688/146065629-db27ba47-679e-45c5-b3fe-eb5d2aad6847.PNG)

#### Error reponse for static website.

![error response](https://user-images.githubusercontent.com/24239688/146066194-fe8bdad2-5933-4c90-8b23-0d257757ad1b.PNG)

#### Now, we create cloudfront distribution for static webpage of s3 bucket as follows;

![creating cf distribution](https://user-images.githubusercontent.com/24239688/146065703-9e35e86d-ac57-4ce8-8a43-91de5018400d.PNG)

![creating cf distribution part 2](https://user-images.githubusercontent.com/24239688/146065712-9c17d418-c78a-47a2-bd42-8fadc0fcce3b.PNG)

![creating cf distribution part 3](https://user-images.githubusercontent.com/24239688/146065719-90791be1-fe30-4e21-9f21-c6719ddc365b.PNG)

#### Cloudfront distribution was created successfully.

![CF distribution created successfully](https://user-images.githubusercontent.com/24239688/146065727-794bcda4-3ea5-4fcd-9957-a83c015d8037.PNG)

#### Next, we create custom error responses as follows;

![creating error response](https://user-images.githubusercontent.com/24239688/146066353-9ffd6c79-62e1-44bb-b8e7-e9049d11a390.PNG)

#### Custom error respose wes created successfully.

![error response created successfully](https://user-images.githubusercontent.com/24239688/146066360-af4c4a5a-4439-452a-b092-e66f29d9dc50.PNG)

#### We verify the app using distribution link as follows;
```
https://d2ee9tha1jdgl8.cloudfront.net
```

![react app verified via distribution domian name](https://user-images.githubusercontent.com/24239688/146065820-bb898daf-3672-4e36-8ae1-75044a159c4a.PNG)

#### To verify either custom error response is working or not, we use;
```
https://d2ee9tha1jdgl8.cloudfront.net/hello
```

![error response verified via distribution domian name](https://user-images.githubusercontent.com/24239688/146066065-bc8872f5-42c8-4a4b-a7ec-f0928e22e9aa.PNG)