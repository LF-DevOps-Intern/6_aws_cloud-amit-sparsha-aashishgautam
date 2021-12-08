5. Create Internet Gateway and attach its route in public route table.
6. Create NAT (and EIP for it) and attach its route in private route table.
Steps:<br/>
Create Internet Gateway <br/>

![internet gateway created](https://user-images.githubusercontent.com/53372486/145212087-bf838a9c-2cf6-4f05-b551-27eed09d41b6.PNG)<br/>

Attach its route in public route<br/>

![internet gateway route added to public subnet](https://user-images.githubusercontent.com/53372486/145212090-2677b943-e50e-40eb-a896-683ebf0bd31d.PNG)<br/>

Create NAT<br/>

![NAT gateway created](https://user-images.githubusercontent.com/53372486/145212080-cd2adbe9-c740-489a-9a35-e44cb41abc66.PNG)<br/>

Attach its route in private route<br/>

![NAT gateway added to the private route table](https://user-images.githubusercontent.com/53372486/145212073-f887a6ed-87a1-44f2-bb23-c928279865c6.PNG)<br/>