Steps:<br/>
Create bucket<br/>
Now Edit Block public access in permission and uncheck Block all public access<br/>

![public block](https://user-images.githubusercontent.com/53372486/145705652-86e00ad9-7e72-4d9a-95bb-d1f0cf77aa02.png)<br/>

Add bucket policy<br/>
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
![add policy](https://user-images.githubusercontent.com/53372486/145705643-f612aad2-76c5-4c4a-81a4-6b64b9d6c54c.png)<br/>

Verify bucket<br/>

![verify](https://user-images.githubusercontent.com/53372486/145705655-04ee82aa-99fa-4d6e-91dd-747331945265.png)<br/>


now build react app<br/>
```
npm run build
```
![build](https://user-images.githubusercontent.com/53372486/145705646-423487b5-6f4e-40d8-bf67-aff78cbc9af9.png)<br/>

Upload folder in s3 bucket<br/>
```
aws s3 sync build s3://rabindra-react --profile lft-training
```
![copy](https://user-images.githubusercontent.com/53372486/145705649-a4703165-836a-4cda-8f62-aad90b31cfba.png)<br/>

Check uploaded files<br/>

![check uploaded file](https://user-images.githubusercontent.com/53372486/145705648-27a24fd9-74c7-4bb7-88f6-a571049022d3.png)<br/>

Open index.htm file in bucket and click on url<br/>

![object url](https://user-images.githubusercontent.com/53372486/145705650-2e6aee80-9eb5-4294-bd72-a8d34271833a.png)<br/>

Check in web<br/>

![websit](https://user-images.githubusercontent.com/53372486/145705657-f61a94e7-c4c0-4ab9-91c8-04c83e6cb3f7.png)<br/>

Change file name in url<br/>

![other](https://user-images.githubusercontent.com/53372486/145705948-c446f01f-0879-492a-942d-41324c6417f9.png)<br/>

Now we have add Static website hosting in property<br/>
Add Static website hosting in property <br/>

![static](https://user-images.githubusercontent.com/53372486/145705654-0a88aba1-5a00-4a9a-b09e-62e14401032a.png)<br/>


click on Bucket website endpoint<br/>

![add static](https://user-images.githubusercontent.com/53372486/145705644-e4e15cec-1493-4c98-8268-071f02ced334.png)<br/>


Check in web<br/>

![static url](https://user-images.githubusercontent.com/53372486/145705653-fe701b21-3d2a-4b2c-9d16-ad6b6b8cbea7.png)<br/>

Add file name in url <br/>

![add other file](https://user-images.githubusercontent.com/53372486/145706022-8fddd93e-bf0c-416f-a221-4360ee827155.png)<br/>

Now search cloudfront<br/>
click on Create Distribution<br/>

![create distribution](https://user-images.githubusercontent.com/53372486/145781140-aaf6b7f3-9134-47ac-9d14-f1635e9948b8.png)<br/>

![origin1](https://user-images.githubusercontent.com/53372486/145781157-72cce65a-aeaa-433d-aa94-1239fe63de23.png)<br/>

![origin2](https://user-images.githubusercontent.com/53372486/145781165-d3508a3e-2e1c-4e3f-9f7c-dbc6a6fcf2dd.png)<br/>

verified created Distribution<br/>

![verified](https://user-images.githubusercontent.com/53372486/145781198-a230aeee-9c16-4960-b8cb-95fad02e451f.png)<br/>

Copy link and open in anorther tab<br/>

![link](https://user-images.githubusercontent.com/53372486/145781148-b34cfa55-b6dd-4d97-933a-dbf8b29cef34.png)<br/>

Check website<br/>

![cludfront](https://user-images.githubusercontent.com/53372486/145781115-aac854b4-a596-49ec-a836-651049362578.png)<br/>

Now Create custom error response for 200 response in error page<br/>

![error response](https://user-images.githubusercontent.com/53372486/145781143-9878e7e2-f672-4038-b4ce-f7ab7c7c9acd.png)<br/>

After deploy now add _/hhd_ and check response<br/>

![200 response](https://user-images.githubusercontent.com/53372486/145781070-39afc761-109a-4d51-b0be-2085c3a6c91c.png)<br/>







