2. Create Route53 Hosted Zone
- Either use your own Domain if you have as <team-name>.<your-domain> OR use mine ie intern.amitj.com.np to create new HZ for your use in pattern <team-name>.intern.amitj.com.np.
- Show nslookup result for your domain.
- Add R53 entry to map above created ALB at URL alb.<team-name>.<your-domain>

Steps:<br/>
Search Route 53 and click on hosted zone<br/>
Create host zone if you have domin <br/>

![host zone](https://user-images.githubusercontent.com/53372486/145619977-cfa4342f-f8e4-45aa-85dd-43a85880c7a4.png)<br/>

We didn't created host zone because we don't have domin,so we have used intern.amitj.com.<br/>
click on Create record inside intern.amitj.com.<br/>

![create record](https://user-images.githubusercontent.com/53372486/145619973-3cf110df-db10-4e5b-9175-ba4494a3ef57.png)<br/>

Now create new record<br/>

![create host](https://user-images.githubusercontent.com/53372486/145619968-cedee45f-10a4-448f-b4df-3a12ca1e5d12.png)<br/>

show nslookup use https://www.nslookup.io/<br/>

![nslookup](https://user-images.githubusercontent.com/53372486/145619981-47734a0f-0212-41db-b87e-39a84eccd458.png)<br/>

Now add Add R53 entry to map above created ALB at URL alb<br/>

![alb](https://user-images.githubusercontent.com/53372486/145619953-b1450e7a-9b6d-44f4-a817-60887a1500ca.png)<br/>

Check hosted ALB  <br/>

![albhost](https://user-images.githubusercontent.com/53372486/145619964-08294b29-4f6e-4648-87eb-5499fe9b5f68.png)<br/>




