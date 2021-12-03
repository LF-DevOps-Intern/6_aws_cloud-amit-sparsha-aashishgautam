
2. Start a EC2 (in default VPC of the region)
- Amazon Linux OS
- Use t2.micro instance (Free Tire)
- Attach 10GB General EBS (detachable)
- Should be publicly accessible
- Access the the EC2 via SSH
- Install OpenVPN package inside the EC2

Steps:

Firstly we login in the aws console using the credentials provided.

<br/>

For Creating instance select the instance type as per the requirement. <br/>
    Click on Amazon Linux as this is suitable as per our requirement. <br/> 


![amazon linux selected](https://user-images.githubusercontent.com/53372486/144471492-f9873e96-ec26-4bf5-97a2-fe49deae0470.PNG)

Selected t2 micro tier for instance type.

![instance type t2 micro selected](https://user-images.githubusercontent.com/53372486/144471464-4f89d6aa-c9a2-4850-b418-3d262162ef20.PNG)

We selected the default configuration in Instace configuration .<br/>
![instance configured](https://user-images.githubusercontent.com/53372486/144471458-bc085cf3-5998-4b77-ad4f-47d179a4daff.PNG)


Changed the volume type to Elastic Block Storage and have allocated 10 GB of space as per the instruction.

![EBS storage added](https://user-images.githubusercontent.com/53372486/144471452-0acf5a35-b0e7-4f13-9ca1-5d75cf544135.PNG)






![creatng new key pair](https://user-images.githubusercontent.com/53372486/144471444-d5d46ce2-94e7-4e30-b161-303badfeb096.PNG)


![instance running successfully](https://user-images.githubusercontent.com/53372486/144471463-1cc49e53-c805-4f9e-8410-5e9f4f5a9f8a.PNG)

![launch status checked](https://user-images.githubusercontent.com/53372486/144471468-b8956f38-3edf-4bff-a73c-63638aaf3ad5.PNG)
![regoin us east 1 selected](https://user-images.githubusercontent.com/53372486/144471471-c2d7fbc0-0f43-4766-b147-4792863853a8.PNG)
![reviewing instance](https://user-images.githubusercontent.com/53372486/144471478-ea2984c8-7498-4847-8c60-46c63f373905.PNG)
![ssh enabled](https://user-images.githubusercontent.com/53372486/144471482-0febfd56-76da-4cae-9452-530942885353.PNG)
![tags added for ec2 instance](https://user-images.githubusercontent.com/53372486/144471484-755fde53-fcde-4848-b220-1011c9c0304f.PNG)

![es2](https://user-images.githubusercontent.com/53372486/144471735-112cef65-8737-466a-855a-702db529f861.png)
![openvpn](https://user-images.githubusercontent.com/53372486/144471748-36a2ec1a-08da-4a32-b5bf-1724093800bc.png)
![vpn](https://user-images.githubusercontent.com/53372486/144471769-4ac7c52f-6197-4942-992c-52f6c6c71106.png)
![yum](https://user-images.githubusercontent.com/53372486/144471786-9c20ab69-8d60-444a-88e5-f08154eff9c4.png)

