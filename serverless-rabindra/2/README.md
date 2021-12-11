2. Create a Lambda function that is triggered by an object being uploaded to an S3 bucket. If the object’s name starts with make_public, ensure that the object is publicly accessible.

Steps:<br/>
Create bucket and Give permission<br/>
permission > Block public access (bucket settings)<br/>

![public](https://user-images.githubusercontent.com/53372486/145682994-f5380b7c-475f-45ac-9d67-d5eb3ca8fa17.png)<br/>

Change Object Ownership<br/>
permission > Object Ownership<br/>

![ownership](https://user-images.githubusercontent.com/53372486/145682202-79c0bf10-0635-4a64-a100-bfed79dfa1ba.png)<br/>

check bucket<br/>

![bucket](https://user-images.githubusercontent.com/53372486/145682195-14f2463a-61db-4012-9a1e-2c1571eb29d8.png)<br/>

Create fuction in lamda <br/>

![create fuction](https://user-images.githubusercontent.com/53372486/145682199-cff90bed-00de-4fc4-8d79-1998b61de18c.png)<br/>

![create fuction 2](https://user-images.githubusercontent.com/53372486/145682197-c66676ff-0f03-4327-ab0b-3ebaf1860a64.png)<br/>

Add permission <br/>
Click on role name<br/>

![add permission](https://user-images.githubusercontent.com/53372486/145682192-21944794-beb1-4fed-ad31-da997e802557.png)<br/>

Attach permission<br/>

![permission](https://user-images.githubusercontent.com/53372486/145682203-0f77d261-df84-4fa6-9f55-7c47e9ca9b09.png)<br/>

Add s3 trigger with prefix make_public<br/> 

![add triger](https://user-images.githubusercontent.com/53372486/145682193-997eebf5-06d1-4a3a-9bb7-743196d44e7d.png)<br/>

Add code in lamda fuction<br/>
```
import json
import boto3

rabindra_db = "rabindra-db"


def lambda_handler(event, context):

    # extracting the bucket name and object name from the event
    bucket_name=event['Records'][0]['s3']['bucket']['name']
    #keep key always in " "
    object_name=event['Records'][0]['s3']['object']["key"]
    
    print("bucket name is", bucket_name)
    print("object name is", object_name)
    
    
    
    #initializing an s3 resourcce
    s3=boto3.resource('s3')
    
    #getting the uploaded public object
    public_object=s3.Object(rabindra_db, object_name)
    
    #get the ACL object for the uploaded object
    acl=public_object.Acl()
    
    #make the object publicly accessible
    acl.put(ACL='public-read')
```
![add code](https://user-images.githubusercontent.com/53372486/145682190-f0909ebd-4124-4b77-b2ab-4daf71beaf32.png)<br/>

Test code (add event-S3 put)<br/>

![execution](https://user-images.githubusercontent.com/53372486/145682200-5d5b77c4-d376-4744-9b90-6b9f1372fb38.png)<br/>
 
Check event notification in s3(property)<br/>

![event notifiaction](https://user-images.githubusercontent.com/53372486/145682727-a3df69c4-75a2-499f-860f-34a7a1fba4e4.png)<br/>

Now add code for  make_public in bash script<br/>
```
#!/bin/bash

# Constants
USER="postgres"
DATABASE="hello"
BACKUP_DIRECTORY="/home/ec2-user/backup/dumpfiles"

# Date stamp
#CURRENT_DATE=pgdump_$(date +"%m%d_%H%M_%s")
CURRENT_DATE=make_public_$(date +"%m%d_%H%M_%s")

# Create the backup 
pg_dump -U $USER $DATABASE >> $BACKUP_DIRECTORY/$DATABASE\$CURRENT_DATE.sql

# Upload to cloud
aws s3 cp $BACKUP_DIRECTORY/$DATABASE\$CURRENT_DATE.sql s3://rabindra-db/$CURRENT_DATE.sql --profile lft-train$
```
![bash](https://user-images.githubusercontent.com/53372486/145682194-df65fc8c-63fd-441c-929a-9e6a3711cef0.png)<br/>

Run bash script<br/>
./dump.sh

![run bash](https://user-images.githubusercontent.com/53372486/145682205-92f35a90-0103-4662-b7b0-2e3f9cb347c2.png)<br/>

Check Uploaded file in s3 bucket<br/>

![uplaod file](https://user-images.githubusercontent.com/53372486/145682264-7b5513c4-e562-4073-abcc-8d6348d2ced6.png)<br/>

Check permission of file after file uploaded<br/>

![permisssion of file](https://user-images.githubusercontent.com/53372486/145682266-fd358b27-2039-43af-88ae-af9c3a41701e.png)<br/>

Check url<br/>

![after click on url](https://user-images.githubusercontent.com/53372486/145682418-a7e36948-bf07-4094-b0fb-2da28e5eb864.png)<br/>