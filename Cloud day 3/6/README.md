6. Create a S3 bucket
    - Upload Dockerfile of Q4 in the bucket using AWS CLI.
Steps:<br/>
Search S3 and Create bucket<br/>

![create bucket](https://user-images.githubusercontent.com/53372486/145612438-986b0e15-a475-43e8-b920-7c42221b180e.png)<br/>

Enter all data<br/>

![create](https://user-images.githubusercontent.com/53372486/145612329-79157b4f-06a1-4d8c-a658-c766e04224c1.png)<br/>

Check created bucket<br/>

![verified](https://user-images.githubusercontent.com/53372486/145611961-319214db-10f8-47a5-9d97-61d40eaa0f2c.png)<br/>

Now add file in bucket through awscli<br/>
```
aws s3 cp docker-compose.yml s3://intern-a --profile lft-training
```
![swam upload](https://user-images.githubusercontent.com/53372486/145611960-d1a30727-b3f8-4e65-ac6c-4ad8669947aa.png)<br/>

Check uploaded file in bucket<br/>

![file in bucket](https://user-images.githubusercontent.com/53372486/145611947-4ffa29ad-c577-468b-982d-eaa7420b51b2.png)