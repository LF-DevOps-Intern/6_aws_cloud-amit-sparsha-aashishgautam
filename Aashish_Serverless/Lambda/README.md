### **Create a Lambda function that is triggered by an object being uploaded to an S3 bucket. If the object’s name starts with make_public, ensure that the object is publicly accessible.**

#### First, we create a lambda function named _aashish-func-s3_ as follows;

![creating new lambda function](https://user-images.githubusercontent.com/24239688/145889080-5a993570-dd2d-4668-a6d7-0d6495082145.PNG)

#### Lambda function was created successfully.

![lambda func created successfully](https://user-images.githubusercontent.com/24239688/145889226-c9b3655c-5c74-491d-bda9-eb1c48f68ffc.PNG)

#### Python code was added in the lambda function as follows;

![code added in lamda function](https://user-images.githubusercontent.com/24239688/145889294-b40dfe6f-ceb0-4b35-bde7-13b22123a6a8.PNG)

#### S3 was granted execution role as follows; 

![granted execution role](https://user-images.githubusercontent.com/24239688/145889333-e0f626fe-bbbb-41f3-818f-0cf3ee1f33d7.PNG)

#### Next, we add attach S3 access policies as follows;

![s3 access added](https://user-images.githubusercontent.com/24239688/145889417-fac6e800-237e-4c77-97e3-63810c4c5fad.PNG)

#### Next, we add s3 trigger with prefix name make_public as follows;

![adding trigger](https://user-images.githubusercontent.com/24239688/145889453-0fa1128e-a0c3-4d2f-8dc5-745f84e5ac39.PNG)

#### S3 trigger was created successfully.

![s3 trigger created successfully](https://user-images.githubusercontent.com/24239688/145889551-8df527b4-423d-495b-b51c-7c6cf656df26.PNG)

#### Next, we modify bash script i.e. postgres-dump.sh file as follows;

![bash script file edited](https://user-images.githubusercontent.com/24239688/145889605-d522853b-15a2-4df7-831c-5aceb8841927.PNG)

#### Public access was enabled as follows;

![block public access disabled](https://user-images.githubusercontent.com/24239688/145889730-5ced10d0-c2e8-4460-adf3-68189d6be755.PNG)

#### Object ownership was edited to Bucket owner preferred.

![object ownership edited](https://user-images.githubusercontent.com/24239688/145889764-83f5fa18-aaa0-49a4-a6b8-803e4dae706b.PNG)

#### Object ownership was changed and verified.

![object ownership saved and verified](https://user-images.githubusercontent.com/24239688/145889801-b14dcc62-4abd-4980-aadb-a056c686cbb7.PNG)

#### Public access was permitted for S3 bucket.

![public access permitted](https://user-images.githubusercontent.com/24239688/145889133-4226ab88-a530-4f4b-9e6a-94f15198c658.PNG)

#### Next, we run the bash script as follows;

![running bash script](https://user-images.githubusercontent.com/24239688/145889849-a8bb05a8-52a1-403c-aa16-a1ff420b2b29.PNG)

#### In aashish-s3 bucket make_public and postgres-dump file were stored.

![Dump files in s3 bucket](https://user-images.githubusercontent.com/24239688/145890095-a165e058-f831-4640-886e-f203aeecd85f.PNG)

#### Make_public file has public access so it was accessible as follows;

![dump file accessible publicly](https://user-images.githubusercontent.com/24239688/145890112-50d690aa-6ee8-4ddc-93e3-9392275eff79.PNG)

#### Make_public file was verified publicly accessible.

![publicly accessible verified](https://user-images.githubusercontent.com/24239688/146028384-55881d74-1aae-4aa1-bf43-ca1ad9605843.PNG)

#### Postgres-dump file was no accessible publicly.

![not publicly accessible](https://user-images.githubusercontent.com/24239688/145890486-93b0f162-b41b-4649-8f2f-8df58bba5838.PNG)

#### Postgres-dump file not accessible publicly was verified as below.

![unable to access dumo file publicly](https://user-images.githubusercontent.com/24239688/145890490-7b58d2e8-e0ce-40ed-88ee-321879a7938c.PNG)









