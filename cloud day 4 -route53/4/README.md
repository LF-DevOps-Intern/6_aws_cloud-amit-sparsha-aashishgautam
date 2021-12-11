### 4. Update ALB
- **Accept request only when Host = alb.team-name.your-domain, with default action response Code: 503, Message: “Unknown Request” on both HTTP and HTTPS requests.**
- **Enable HTTPS support.**
- **Redirect HTTP to HTTPS.**


#### First, we create a listener on already created ALB for HTTPS protocol as follows;

![https listener created](https://user-images.githubusercontent.com/24239688/145689312-871ab6f3-10ea-4b15-bef5-be199543b727.PNG)

#### Next, we secure listener settings using latest security policy and SSL certificate as follows;

![secure listener settings](https://user-images.githubusercontent.com/24239688/145689367-6310f927-3379-492d-8086-5aa6fb5b8c3b.PNG)

#### Then, the newly created listener for HTTPS was verified as below;

![https listener added](https://user-images.githubusercontent.com/24239688/145689334-128f7d17-a58c-45de-8216-2155da365959.PNG)

#### We can verify the rule for HTTP listener as follows;

![new rule added](https://user-images.githubusercontent.com/24239688/145689319-31e8334d-2123-49bf-9b23-84fe4fa81f6b.PNG)

#### We can verify the rule for HTTPS listener as follows;

![Rule for HTTPS](https://user-images.githubusercontent.com/24239688/145689688-31d6e6f4-a53b-4d09-8da9-83fd6ed051fd.PNG)

#### Now, we edit HTTP listener rule to redirect the HTTP to HTTPS as follows;

![rule added to redirect http to https](https://user-images.githubusercontent.com/24239688/145689328-ac9bd396-de31-4d7a-a56d-26819b8a9a77.PNG)

#### Next, we verify using the same host on web browser as follows;

![verified via same host](https://user-images.githubusercontent.com/24239688/145689385-837b4908-e9df-4cba-b852-5d2ef7e8c045.PNG)

#### Tested using differnet host rather than the same host.

![verified via different host](https://user-images.githubusercontent.com/24239688/145689392-4969295b-0fac-4a03-ae48-9616bc960323.PNG)

#### Lastly, we verified that HTTP request redirected to HTTPS along with SSL certificate.

![http redirected to https successfully veified via browser](https://user-images.githubusercontent.com/24239688/145689400-047ed5fc-934d-48a0-8e5b-bd4d7bdd90bb.PNG)


