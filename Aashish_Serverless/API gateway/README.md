### Create two Lambda Functions
* **First Lambda function returns 200 Response as {“Hello”: “Default”}.**
* **Second Lambda function returns 200 Response as {“Hello”: “{Dynamic route name}”}.**
* **Configure API Gateway with that hits first lambda function on / and the second lambda function on /.**

#### First, we create a lambda function named _aashish-api1_ as follows;

![aashish api1 lambda function was created](https://user-images.githubusercontent.com/24239688/146267353-10dae1e7-cfa0-4729-b85f-80b85e85094a.PNG)

#### Next, we add python code as follows;
```
import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps({"Hello": "Default"})
    }
```

![code was added](https://user-images.githubusercontent.com/24239688/146267386-92277a41-610b-43f9-8508-1ccf45a41900.PNG)

#### Next, we need to create an API gateway. We choose an API type as HTTP API.

![choose api type](https://user-images.githubusercontent.com/24239688/146267482-39d52a1f-b07b-48b0-b9c2-8161c014ced3.PNG)

#### We create an API named _aashish-api_ along with lambda integrations.

![creating an api](https://user-images.githubusercontent.com/24239688/146267488-dd8638ee-9b00-49c7-ab08-dcb799b14c7e.PNG)

#### Next, we configured our resource path as / and integrate it with lambda function _aashish-api1_.

![routes configured](https://user-images.githubusercontent.com/24239688/146268512-201c3dcb-983f-48bd-9b86-583255224372.PNG)

#### Next, we set stages as default.

![define stages](https://user-images.githubusercontent.com/24239688/146268003-e7bd0a4f-f7f1-4896-8ad9-fb422c7c5baf.PNG)

#### Then, we review all our configurations and create the API.

![review and create](https://user-images.githubusercontent.com/24239688/146267522-4930b60d-e075-4167-8cc5-4a71f3e0e305.PNG)

#### API was created successfully.

![api created successfully](https://user-images.githubusercontent.com/24239688/146267534-b5f2f0ae-8a1b-46e2-955a-bf564f989068.PNG)

#### Next, we add API gateway trigger on the lambda function as follows;

![creating api gateway trigger](https://user-images.githubusercontent.com/24239688/146267552-1d96a3c8-0286-43e2-936e-a9e4fb416d8b.PNG)

#### API gateway trigger was added successfully.

![api gateway trigger added successfully](https://user-images.githubusercontent.com/24239688/146267560-81ed735f-acd3-42e0-ad01-e6df7f655ef3.PNG)

#### Verfiied via web browser.

![verfied successfully via web browser](https://user-images.githubusercontent.com/24239688/146267578-77210a1d-9bbe-4d75-ad4c-5d3ae4be2f12.PNG)

#### Again, we create another lambda function named _aashish-api2_.

![lambda function aashish api2 was created](https://user-images.githubusercontent.com/24239688/146267625-662d2e1c-7f0c-4423-a1a6-5ad17368f7d4.PNG)

#### We add python code as follows;
```
import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps({"Hello":event["rawPath"].strip('/')})
    }

```

![code was added](https://user-images.githubusercontent.com/24239688/146267644-7ec3e160-24e4-4dee-a272-b5d08b04adf4.PNG)

#### Next, we add another route on the API gateway.

![route added in api gateway](https://user-images.githubusercontent.com/24239688/146267671-9f4e55c8-ea60-4592-80b7-96a0c9e2963a.PNG)

#### Now, we integrate the new route with our lambda function named _aashish-api2_ as follows;

![integration also checked](https://user-images.githubusercontent.com/24239688/146267691-c5586d66-d6bd-478a-991e-e8723788ea19.PNG)

#### Next, we added API gateway trigger on the lambda function.

![trigger added to lambda function successfully](https://user-images.githubusercontent.com/24239688/146267709-4863dafb-85b7-40f1-bf64-64be3d85782e.PNG)

#### Verified on the web browser with default path value.

![test using exisiting value](https://user-images.githubusercontent.com/24239688/146267718-e8c545c7-c93f-4c29-9472-f06b8fe637fc.PNG)

#### Verified on the web browser with differnet path value.

![tested using differnet path values](https://user-images.githubusercontent.com/24239688/146267727-445080ef-4ea9-45fb-814a-ad188223df01.PNG)


