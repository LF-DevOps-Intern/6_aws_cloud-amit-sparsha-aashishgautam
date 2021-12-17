### Integrate both these scripts with one of Jenkins, Github Actions, CircleCI or TravisCI

#### Here, I have chose to us Github actions to integrate the lambda function script. So, First of all, we create github workflows as follows;


![workflow setup done](https://user-images.githubusercontent.com/24239688/146529259-7c1c024f-04c5-4a08-8732-9f79883642ee.PNG)

#### YAML file was named _lambda.yml_ in workflows as follows;

![inside workflow lambda yaml file](https://user-images.githubusercontent.com/24239688/146529266-9ab1d30c-eb70-4ae9-bbcd-9177dd0aa9b0.PNG)


#### Lambda.yml file was added successfully.

![lambda yml added](https://user-images.githubusercontent.com/24239688/146529318-83ee2366-272c-4cbd-8cc5-8be8b4792f14.PNG)


#### Next, we added the following code in _lambda.yml_ file.

![lambda yaml file code](https://user-images.githubusercontent.com/24239688/146529291-a59a1aba-c783-431d-91a4-4c819236e158.PNG)


#### All the contents in the repo.

![private repo with all the contents](https://user-images.githubusercontent.com/24239688/146529452-4a5f7690-91f3-4f2d-a03b-53a1d117ad23.PNG)

#### Build was successful which can viewed from Actions option.

![build successful](https://user-images.githubusercontent.com/24239688/146529352-fce82569-cc02-4f20-862f-d4139c2805a3.PNG)

#### Cicd-deployment function was successfully created as verified from the AWS lambda.

![cicd deployment function created successfully via github actions](https://user-images.githubusercontent.com/24239688/146529371-56486407-dba4-41d7-9ba0-7845c4a63e00.PNG)

#### Code verified.

![code verified via lambda function](https://user-images.githubusercontent.com/24239688/146529391-3cd06c33-fc47-4ec2-a8fc-8645e2b445dc.PNG)

#### Function's configuration was also verified.

![function configuration verified](https://user-images.githubusercontent.com/24239688/146529403-7316a360-aa6e-4190-9027-59832c54c84e.PNG)
