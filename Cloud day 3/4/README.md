4. Create ECR and upload your Docker image created during Docker assignment Q3.
    - Each member must upload an image (in team’s ECR repo) with their name as tag.

Steps:<br/>
Search ECR and create Repositories with private<br/>

![create repository2](https://user-images.githubusercontent.com/53372486/145609435-a0ee68be-8b2f-48cf-af2f-3a6b975f5b0c.png)<br/>

![create repository](https://user-images.githubusercontent.com/53372486/145609453-8cfed080-1d9b-44c9-8bad-a0cd8998d674.png)<br/>

Check ECR<br/>

![ECR](https://user-images.githubusercontent.com/53372486/145609444-7e84d23d-2c29-4ecd-9adc-a07d6861f4b3.png)<br/>

Now click on view push command and go to terminal and use below code to push image to ECR<br/>
Retrieve an authentication token and authenticate  Docker client to registry in lft-training profile<br/>
```
aws ecr get-login-password --region us-east-1 --profile lft-training | docker login --username AWS --password-stdin 949263681218.dkr.ecr.us-east-1.amazonaws.com
```
```
docker tag rabindra01/react_web:1.0  949263681218.dkr.ecr.us-east-1.amazonaws.com/intern-a:rabindra
```
```
docker push 949263681218.dkr.ecr.us-east-1.amazonaws.com/intern-a:rabindra
```
![dcoker](https://user-images.githubusercontent.com/53372486/145609440-1a541b2e-02a6-469c-8dc8-0835f046897a.png)<br/>

Check image <br/>
![push image](https://user-images.githubusercontent.com/53372486/145609451-990bb69b-8c2d-40c7-a324-c49ad07ff570.png)<br/>
