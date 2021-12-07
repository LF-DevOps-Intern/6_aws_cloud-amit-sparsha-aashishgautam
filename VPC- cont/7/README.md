### 7. Create S3 VPC Endpoint and add its route to both public and private Route tables.

#### First, we select the service category as _AWS service_ and service name as _com.amazonaws.us-east-1.s3_ as follows;

![Service chosen s3](https://user-images.githubusercontent.com/24239688/144968604-760f3b4a-c758-403f-80fd-2b8985abc964.PNG)

#### Next, we select the VPC to which endpoint will be added. And along with it, we slect the route table to be associated with this endpoint as follows;

![VPC and routes added](https://user-images.githubusercontent.com/24239688/144968620-058acde1-ae6a-4671-9127-fe98c95ddbc5.PNG)

#### Next, we set the policy as default and add tag with _key=Name_ and _value=intern-a-s3-endpoint_ as follows; 

![policy set default](https://user-images.githubusercontent.com/24239688/144968638-05917930-879c-42c0-bc48-4299f7c44acb.PNG)

#### Then, the S3 VPC Endpoint was created successfully.

![S3 endpoint created successfully](https://user-images.githubusercontent.com/24239688/144968657-b5ae5d5f-cb31-4720-a96b-94725dfa5ced.PNG)

#### Lastly, we verified that both public and private route tables were associated with S3 VPC Endpoint successfully.

![Pvt and pub both route tables added in s3 vpc endpoints](https://user-images.githubusercontent.com/24239688/144968667-a2af0556-a53f-48f7-b88e-64480542beee.PNG)