Steps:
Create bucket with public Access

Now Edit Block public access in permission and uncheck Block all public access

![public block](https://user-images.githubusercontent.com/53372486/145705652-86e00ad9-7e72-4d9a-95bb-d1f0cf77aa02.png)
Add bucket policy
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::rabindra-react/*"
        }
    ]
}
```
![add policy](https://user-images.githubusercontent.com/53372486/145705643-f612aad2-76c5-4c4a-81a4-6b64b9d6c54c.png)

Verify bucket
![verify](https://user-images.githubusercontent.com/53372486/145705655-04ee82aa-99fa-4d6e-91dd-747331945265.png)


now build react app
```
npm run build
```
![build](https://user-images.githubusercontent.com/53372486/145705646-423487b5-6f4e-40d8-bf67-aff78cbc9af9.png)

Upload folder in s3 bucket
```
aws s3 sync build s3://rabindra-react --profile lft-training
```
![copy](https://user-images.githubusercontent.com/53372486/145705649-a4703165-836a-4cda-8f62-aad90b31cfba.png)

Check uploaded files

![check uploaded file](https://user-images.githubusercontent.com/53372486/145705648-27a24fd9-74c7-4bb7-88f6-a571049022d3.png)
Open index.htm file in bucket and click on url
![object url](https://user-images.githubusercontent.com/53372486/145705650-2e6aee80-9eb5-4294-bd72-a8d34271833a.png)

Check in web
![websit](https://user-images.githubusercontent.com/53372486/145705657-f61a94e7-c4c0-4ab9-91c8-04c83e6cb3f7.png)

Change file name in url

![other](https://user-images.githubusercontent.com/53372486/145705948-c446f01f-0879-492a-942d-41324c6417f9.png)

Now we have add Static website hosting in property because it will give public url
Add Static website hosting in property 

![add static](https://user-images.githubusercontent.com/53372486/145705644-e4e15cec-1493-4c98-8268-071f02ced334.png)

click on Bucket website endpoint

![static url](https://user-images.githubusercontent.com/53372486/145705653-fe701b21-3d2a-4b2c-9d16-ad6b6b8cbea7.png)

Check in web

![static](https://user-images.githubusercontent.com/53372486/145705654-0a88aba1-5a00-4a9a-b09e-62e14401032a.png)

Add file name in url 

![add other file](https://user-images.githubusercontent.com/53372486/145706022-8fddd93e-bf0c-416f-a221-4360ee827155.png)









