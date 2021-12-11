1. Write a script that backs up an SQL dump and uploads it to an S3 Bucket. The contents of the S3 bucket should not be accessible via public.

Steps:<br/>
Start postgres <br/>
```
sudo systemctl start postgresql.service
```
![status](https://user-images.githubusercontent.com/53372486/145670352-da67caa7-56f7-4ac7-8d35-2163afbb324d.png)

Connect postgres<br/>
```
sudo -iu postgres psql 
```
![psql](https://user-images.githubusercontent.com/53372486/145670351-4ec1752d-a3ae-4cbb-8a11-4f04cdc786b2.png)

Now use hello<br/>
```
\c hello
```
Check database<br/>
```
\l
```
Created two tables<br/>
```
CREATE TABLE accounts (
	user_id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
        last_login TIMESTAMP 
);
CREATE TABLE roles(
   role_id serial PRIMARY KEY,
   role_name VARCHAR (255) UNIQUE NOT NULL
);
```
Check created tables<br/>
```
\dt
```
![tables](https://user-images.githubusercontent.com/53372486/145670353-c5b79464-db3f-4787-b3b9-b83504b70c9c.png)<br/>

Insert data in role table<br/>
```
INSERT INTO roles (role_name) values (devops);
INSERT INTO roles (role_name) values (QA);
```
![insert data in table](https://user-images.githubusercontent.com/53372486/145670344-e389fef3-6671-44b6-962a-d3fff51a0549.png)<br/>

Check table in tables<br/>
```
select * from roles;
```
![data](https://user-images.githubusercontent.com/53372486/145670340-375c2fe9-5464-4caa-970b-247882ad1ba8.png)

Connected with AWS cli<br/>
```
aws configure --profile lft-training 
```
Now create .pgpass and give readwrite permission<br/>
```
nano .pgpass
```
```
*:*:*:postgres:postgres
```
```
chmod 600 .pgpass
```
![pgpass](https://user-images.githubusercontent.com/53372486/145670349-9f001dd5-340b-4f32-afa0-28314c0911ef.png)<br/>

Make dir and create another dir inside that dir<br/>
```
mkdir backup
```
```
cd backup
```
mkdir dumpfile and dump.sh<br/>
```
#!/bin/bash

# Constants
USER="postgres"
DATABASE="hello"
BACKUP_DIRECTORY="/home/ec2-user/backup/dumpfiles"

# Date stamp
CURRENT_DATE=pgdump_EC2_$(date +"%m%d_%H%M_%s")

# Create the backup 
pg_dump -U $USER $DATABASE >> $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql

# Upload to cloud
aws s3 cp $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql s3://rabindra-db/_$CURRENT_DATE.sql --profile lft-training
```
![dumpscript](https://user-images.githubusercontent.com/53372486/145670341-fde81a66-899d-4a40-8a40-35ad812d914b.png)<br/>

Run dump.sh<br/>
```
./dump.sh
```
![upload](https://user-images.githubusercontent.com/53372486/145670354-57d5f80c-591f-486b-adfc-e10927d5daa2.png)<br/>

Now check in s3 bucket<br/>

![not accesible](https://user-images.githubusercontent.com/53372486/145670346-eebc50d3-5d85-48ae-ad5f-dc79a26ec66f.png)<br/>

Used crontab For 3 time backup<br/>
Check crontab<br/>  
```
crontab -l
```
![crontab](https://user-images.githubusercontent.com/53372486/145670339-f1442b9d-8fc1-4187-b86e-16593053fb73.png)<br/>

Run crontab <br/>
```
corntab -e
```
Add rule in crontab<br/>
```
0 0,6,13 * * * ~/backup/dump.sh
```
![edit crontab](https://user-images.githubusercontent.com/53372486/145670343-09e22d97-456a-4b30-8c11-644762b27a3a.png)

Again Check crontab after added rule<br/>
```
crontab -l
```
![check crontab](https://user-images.githubusercontent.com/53372486/145670336-bbe33e03-7c98-4dca-9d3a-5164a2d2a5ba.png)






