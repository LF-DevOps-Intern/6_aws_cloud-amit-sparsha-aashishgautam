4. (Optional)
- Create standard SQS.
- Add this SQS as target in above created Event Bridge rule (in addition to existing SNS)
- Add lambda trigger in SQL to sendEmail lambda function.
Search SQS
Create Queue
Search lamda
Add trigger SQS
Add code and config it
```
import json

import boto3
import os

ses = boto3.client('ses')

email_from = 'rabindra2079@gmail.com'
email_to = 'rabindra2079@gmail.com'
# email_to_env = os.get_env("TOEMAIL").split(",")
# if len(email_to_env) > 0:
#     email_to = email_to_env
emaiL_subject = 'Subject'
email_body = 'Body'

def lambda_handler(event, context):
    # TODO implement
    print(event)
    emaiL_subject = "Event Occured"
    email_body = json.dumps(event)
    response = ses.send_email(
        Source = email_from,
        Destination={
            'ToAddresses': [
                email_to,
            ]
        },
        Message={
            'Subject': {
                'Data': emaiL_subject
            },
            'Body': {
                'Text': {
                    'Data': email_body,
                },
            },
        }
    )
    return response

check mail
```