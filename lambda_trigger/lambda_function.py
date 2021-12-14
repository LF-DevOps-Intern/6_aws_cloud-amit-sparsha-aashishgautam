import json
import boto3

s3 = boto3.resource("s3")

def lambda_handler(event, context):
    bucket_name = event['Records'][0]['s3']['bucket']['name']
    file_name = event['Records'][0]['s3']['object']['key']

    new_object = s3.Object(bucket_name,file_name)
    object_acl = new_object.Acl()
    if file_name.startswith('make_public'):
        object_acl.put(ACL='public-read')

