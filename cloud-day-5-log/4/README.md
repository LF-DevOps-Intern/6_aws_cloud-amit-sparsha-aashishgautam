### 4. (Optional)
### - Create standard SQS.
### - Add this SQS as target in above created Event Bridge rule (in addition to existing SNS)
### - Add lambda trigger in SQS to sendEmail lambda function.

### Steps:
#### Search SQS
#### First, we create SQS Queues named _intern-a_ with standard type.

![create SQS Query](https://user-images.githubusercontent.com/53372486/145699829-027160e9-a723-4a2c-97da-1fcc491e9ba9.png)<br/>

#### Verified created queues

![SQS](https://user-images.githubusercontent.com/53372486/145699822-a9695152-dd53-46ba-97e8-315673e3937c.png)<br/>

#### Now open Event Bridge and Add this SQS as target in above created Event Bridge rule (in addition to existing SNS) as a rule

![event_bridge_2](https://user-images.githubusercontent.com/53372486/145699831-4e706c27-f72a-4bb0-b8ad-34b9d0f22093.png)<br/>

#### Search lamda
#### Click on create fuction

![create fuction](https://user-images.githubusercontent.com/53372486/145699828-d4b3a01b-69eb-403c-9b63-fc5581d25c39.png)<br/>

#### Create fuction name as _intern-a_ with roles

![create fuction 2](https://user-images.githubusercontent.com/53372486/145699827-b0fc4ee6-1e44-44be-85cd-d047515b03fc.png)<br/>

#### Add trigger SQS with _intern-a_

![Add triger](https://user-images.githubusercontent.com/53372486/145699823-72ddeb6a-7b82-422d-b01f-e0c2034dfd56.png)<br/>

#### Check permission

![check permission](https://user-images.githubusercontent.com/53372486/145699825-b88c0e33-cf62-4ca4-a00a-c04d65c9af7a.png)<br/>

#### Add permission for _SQS_ and _SES_

![Attach permission](https://user-images.githubusercontent.com/53372486/145699824-9491ad64-995f-4974-93cf-b564ab512a03.png)<br/>

#### Add code and config it
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

```

![code](https://user-images.githubusercontent.com/53372486/145699826-239e374c-284e-4056-8043-44aa680ee961.png)<br/>

#### Now test code with _SQS event_

![execute](https://user-images.githubusercontent.com/53372486/145699819-8e8c84eb-c77f-4589-b6cc-3348e18bb25f.png)<br/>

#### now check mail 
![mail1](https://user-images.githubusercontent.com/53372486/145699850-aaa4028a-b39c-4b6b-bb05-c82cfbacf80a.png)<br/>

![mail](https://user-images.githubusercontent.com/53372486/145699821-4e82c0de-2f2c-4ae6-a1d7-2c2f555587c5.png)<br/>









