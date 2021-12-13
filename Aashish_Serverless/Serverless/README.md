### **Write a script that backs up an SQL dump and uploads it to an S3 Bucket. The contents of the S3 bucket should not be accessible via public.**

#### First, we create a s3 bucket named _aashish-s3_ as follows;

![s3 bucket created 0](https://user-images.githubusercontent.com/24239688/145884623-5e8602ee-fcc5-4a01-bf89-d639f3b261b7.PNG)

#### Next, we check the PostgreSQL server status as follows;
```
sudo systemctl start postgresql.service 
sudo systemctl status postgresql.service 

```

![postgres status running 1](https://user-images.githubusercontent.com/24239688/145884321-3b0abec1-e0d2-4c96-a4bd-046326497bda.PNG)

#### Next, we connect to the postgres via our private ec2 and list out the databases as follows;
```
sudo -iu postgres psql
\l
```

![connected to postgres 2](https://user-images.githubusercontent.com/24239688/145884338-451c689f-4f5c-4054-8caa-8ba9db75e8c5.PNG)

#### Next, we create a database named _aashish_.
```
CREATE DATABASE aashish WITH ENCODING 'UTF8' ;
```

![DB named aashish created 3](https://user-images.githubusercontent.com/24239688/145884359-545fbd56-712b-4866-a3e6-c94bf2bf72a6.PNG)

#### Connecting to database _aashish_ using the command;
```
\c aashish
```

![connected to db aashish and tables created 4](https://user-images.githubusercontent.com/24239688/145884366-3d27ae7a-bca8-4c73-b5c5-44fa7de7fa49.PNG)

#### Listing the tables created i.e. company and department.
```
\d
```

![tables verified 5](https://user-images.githubusercontent.com/24239688/145884385-602291e6-762a-4d72-81c4-958f0624d409.PNG)

#### Checking data on table company.
```
\d company
```

![connected to table company 6](https://user-images.githubusercontent.com/24239688/145884395-6fdaf6e9-c94e-41ac-8193-82bb52f3fa80.PNG)

#### Next, we insert data in table company as follows;

![data added in company table 7](https://user-images.githubusercontent.com/24239688/145884399-726bd04f-f32c-45a0-91e8-683d307e9a79.PNG)

### Checking the added data on table company using the SQL as follows;
```
select * from company;
```

![data verfiied 8](https://user-images.githubusercontent.com/24239688/145884406-9a57b031-97ee-495f-b3a6-f18619d4cc3e.PNG)

#### Now, we create lft-training profile and connect via aws cli as follows;
```
aws configure --profile lft-training
```

![aws cli accessed 9](https://user-images.githubusercontent.com/24239688/145884410-4ad3602b-68c7-4ed5-b2b8-a9cff64e56f9.PNG)

#### Next, we create .pgpass to pass the passowrd as follows;
```
cd ~
nano .pgpass
```
![pgpass 10](https://user-images.githubusercontent.com/24239688/145884442-1fc85700-a512-4359-8d2a-506e653e4632.PNG)

#### Next, we grant 600 permission to grant read and write access as follows,
```
chmod 600 .pgpass
```

![read write access given to pgpass 11](https://user-images.githubusercontent.com/24239688/145884452-eb9a1f38-700f-44cf-90e9-bd88e30b87f0.PNG)

#### Now, we create a directory to take dumpfiles and store them in aws s3.

![create directory for backups 12](https://user-images.githubusercontent.com/24239688/145884455-6496245c-a308-4fe2-8a61-6b04f51eebee.PNG)

#### We write bash script to take the dumpfile and store it in aws s3 as follows;
```
nano postgres-dump.sh
```

![postgres dump shell script 13](https://user-images.githubusercontent.com/24239688/145884468-497a8511-c5f1-4a06-a320-aae94f0d0b04.PNG)

#### Here, postgres-dump.sh is given executive permission;
```
chmod +x postgres-dump.sh
```

![execute permission granted 14](https://user-images.githubusercontent.com/24239688/145884474-eb4de58a-6d85-4049-86be-8a7e63d97fed.PNG)

#### Now, we run the bash script file as follows;
```
./postgres-dump.sh
```

![running postgres dump shell script 15](https://user-images.githubusercontent.com/24239688/145884480-d77f2263-06d7-459d-8056-9e2f54b6134a.PNG)

#### We verified that the postgres dump has been stored in dumpfiles directory.

![dumpfile seen in dumpfiles dir 16](https://user-images.githubusercontent.com/24239688/145884487-481459d1-8946-4dac-84fd-8784e5a3d66a.PNG)

#### We can verify that the AWS S3 has also stores the dumpfile in aashish-s3 bucket as follows;

![postgres dump stored in aashish s3 bucket successfully 17](https://user-images.githubusercontent.com/24239688/145884492-a8e51cf1-ff24-497e-a204-1e2da1cf85f7.PNG)

#### The dumpfile is not publicly accessible which is verified as shown in the figure below;

![dumpfile publicly not accessible 18](https://user-images.githubusercontent.com/24239688/145884522-475e2cd9-12db-4bbb-9ffc-9b8b3fc7ef15.PNG)

#### Verified via web browser as well.

![dumpfile publicly not accessible verfiied via web browser 19](https://user-images.githubusercontent.com/24239688/145884556-2d686358-ea5d-40dd-8018-fe61c9bc9edc.PNG)

#### Lastly, we set cronjob to run the bash 3 times a day as follows;
```
crontab -e
   0 8,16,0 * * * ~/postgres-backups/postgres-dump.sh
crontab -l
```


![cron job added successfuly for 3 times in a day 19](https://user-images.githubusercontent.com/24239688/145884572-8efb5bfe-d10f-48e2-a219-975f6ad9cbc8.PNG)