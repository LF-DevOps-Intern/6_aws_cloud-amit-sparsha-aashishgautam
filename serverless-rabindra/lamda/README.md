1. Create two Lambda Functions
- First Lambda function returns 200 Response as {“Hello”: “Default”}
- Second Lambda function returns 200 Response as {“Hello”: “{Dynamic route name}”}
- Configure API Gateway with that hits first lambda function on / and the second lambda function on /*

Steps:<br/>
Create lamda fuction for {“Hello”: “Default”}<br/>
```
import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps({"Hello": "Default"})
    }
```
![lamda fuction](https://user-images.githubusercontent.com/53372486/146229800-4455805c-6ac3-4f8a-bdd3-a42d85615046.png)<br/>

Execute result<br/>

![execute](https://user-images.githubusercontent.com/53372486/146229787-998d54c8-380e-4c87-8ac1-76c20fdc6003.png)<br/>

And create lamda fuction for {“Hello”: “{Dynamic route name}”}<br/>
```
import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps({"Hello":event["rawPath"].strip('/')})
    }

```
![lamda fuction2](https://user-images.githubusercontent.com/53372486/146229803-b12daae6-26dc-4354-9e10-4ae8e16a2e68.png)<br/>

Execute result<br/>

![execute2](https://user-images.githubusercontent.com/53372486/146256233-0e201972-c894-47e4-9c3f-34fb6be9d884.png)<br/>

Now Search API gateway <br/>
Click on Create api<br/>

![create api](https://user-images.githubusercontent.com/53372486/146229776-452bd5bb-8755-487b-8858-a61396ae1be3.png)<br/>

Choose an API type <br/>

![choose](https://user-images.githubusercontent.com/53372486/146229756-3fb13bfc-a571-446b-bc71-9b762ab3937c.png)<br/>

Add integration <br/>

![create](https://user-images.githubusercontent.com/53372486/146229781-f084ae5c-a896-4dca-97f7-690492ae0771.png)<br/>

Add configure routes<br/>

![configure](https://user-images.githubusercontent.com/53372486/146229767-3857470b-8330-4b38-baef-7c2185da18e6.png)<br/>

Keep default stage<br/>

![stage](https://user-images.githubusercontent.com/53372486/146229812-3828e387-d31a-4cb3-b4a3-dd830d39262b.png)<br/>

Review <br/>

![review](https://user-images.githubusercontent.com/53372486/146229808-c0fd0a1c-98a1-4bcc-afdf-1edaae5ccc43.png)<br/>

Check integration <br/>

![intregration](https://user-images.githubusercontent.com/53372486/146229795-34971dfc-9dac-4e0b-ab28-31ad25e2354b.png)<br/>

Click on invoke (https://hajr35ob7c.execute-api.us-east-1.amazonaws.com)<br/>

![url](https://user-images.githubusercontent.com/53372486/146229817-4789d51e-7033-4872-8d91-ce4a0ee5d03f.png)<br/>

Checking in web<br/>

![web](https://user-images.githubusercontent.com/53372486/146229821-6c1ee5f3-c09f-4af7-9ef5-4e604604f111.png)<br/>

Checking in web for Dynamic route name(https://hajr35ob7c.execute-api.us-east-1.amazonaws.com/rabindra) <br/>

![web2](https://user-images.githubusercontent.com/53372486/146256237-82b8737f-625d-4baa-af5a-1e5cfa54add4.png)<br/>

















