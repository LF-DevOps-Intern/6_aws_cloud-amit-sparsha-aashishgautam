### 1. Create Application Load balancer 
- **Start a simple server in private EC2 8880**
- **Target ALB to serve that server**
- **ALB should be accessible through port 80 listener**
- **Health Check**
 - **Register healthy on 3 success**
 - **Register unhealthy on 5 success**
 - **Timeout 5 Seconds**
 - **Interval 45 Seconds**
- **Access the server via ALB publicly using ALB’s DNS name.**<br/>

### Steps:

#### First, we select a load balancer type while creating a load balancer. We chose Application Load Balancer as load balancer type. 

![load balacner type ALB selected](https://user-images.githubusercontent.com/24239688/145690529-60bac278-442c-4e46-8186-ade80792a7a6.PNG)

#### Next, we start basic configuration of application load balancer with name _intern-a-load-blc_ as follows;

![Basic config](https://user-images.githubusercontent.com/24239688/145690532-7b5fcf8b-0116-4b3a-a359-24f8d7151678.PNG)

#### Next, we configure network mapping with our VPC and its subnets as follows;

![network mapping](https://user-images.githubusercontent.com/24239688/145690535-982fb06e-b61b-406a-a77d-eee87ba6d63e.PNG)

#### Next, we create new security group for our load balancer named _intern-a-lb-pub-80_ and select it in security group configuration.

![alb security group created](https://user-images.githubusercontent.com/24239688/145690806-3b9af953-7ed5-4f56-9dab-e532b8e33c92.PNG)


![security grp and listeners added](https://user-images.githubusercontent.com/24239688/145690543-3b9e4d1b-aa6f-42ee-926b-e1adbf5d86e5.PNG)

#### Then, the application load balancer was created successfully and verified as below;

![load balancer created successfully](https://user-images.githubusercontent.com/24239688/145690537-585b6d66-b125-425e-ba02-dd643f1bfc6b.PNG)

#### Listener was also verified.

![listeners verfiied](https://user-images.githubusercontent.com/24239688/145690610-b745dc59-98fb-4bf9-9c27-a6324cf46c7c.PNG)

#### Next, we need to create a target group. We create a target group named _intern-a-tgt_ as follows;

- **Part 1**
```
Target type was selected.
```

![creating target part 1](https://user-images.githubusercontent.com/24239688/145690554-eccb3cc4-4e90-4989-b16c-2dfe4903bec9.PNG)

- **Part 2**
```
HTTP protocol mapped to 8880 port and VPC also selected.
```

![creating target part 2](https://user-images.githubusercontent.com/24239688/145690558-e5005a31-1deb-43f3-91da-d15f64454b64.PNG)

- **Part 3**
```
Added port override as 8880 in advance health check settings along with other settings as below;
```
![creating target part 3](https://user-images.githubusercontent.com/24239688/145690559-ffdeefd8-249f-4781-9a64-caf3e7241d91.PNG)

#### Next, Target was registered successfully.

![target registered](https://user-images.githubusercontent.com/24239688/145690597-560c591f-0b71-4226-9415-ef44daa02e11.PNG)

#### Next, Target group was verified with status _unhealthy_.

![target created and verified](https://user-images.githubusercontent.com/24239688/145690570-722bef45-d558-4918-8773-f6593e046c0e.PNG)

#### Health check was also verified.

![health checks verified](https://user-images.githubusercontent.com/24239688/145690581-7092e4fe-d03c-4468-8da4-9cd6f0f53ed1.PNG)

#### Now, we run a simple server using python listening on port 8880 in private EC2 instance with IP _10.15.8.7_ .

![server running at port 8880 in pvt ec2 instance](https://user-images.githubusercontent.com/24239688/145690589-da546ba2-630e-4466-abfe-7a305aca93cb.PNG)

#### The server was accessed via ALB publicly using ALB’s DNS name.

![verified via DNS name](https://user-images.githubusercontent.com/24239688/145690594-efdcb60c-af8c-41bd-9aa5-746075d90e65.PNG)

#### Target was verified as healthy.

![health status verified healthy](https://user-images.githubusercontent.com/24239688/145690615-c2cbad8c-83da-470d-acdd-2d9b27371dc5.PNG)

#### Lastly, Target group was verified with status _healthy_.

![target verified as healthy](https://user-images.githubusercontent.com/24239688/145690625-459a9620-e7a5-41a9-80c6-b363cee930b4.PNG)

