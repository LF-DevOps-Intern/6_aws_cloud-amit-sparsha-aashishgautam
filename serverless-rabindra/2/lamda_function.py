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