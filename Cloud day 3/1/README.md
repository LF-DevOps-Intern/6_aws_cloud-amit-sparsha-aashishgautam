### 1. VPC peer from your team’s VPC to next team ie A->B, B->C, …, E->A.<br/>
* Allow both direction VPC Traffic. 
* Add route to peered VPC in private Route Table.

#### First, we create a peering connection named _intern-a-vpc-peer_ as shown below; </br/>

![vpc peer created](https://user-images.githubusercontent.com/24239688/145638941-ccad6a9c-4bd1-43c1-b0a4-6fea3ea22ceb.PNG)<br/>

#### Next, we verify that peering connection is created successfully.

![VPC peer verified](https://user-images.githubusercontent.com/24239688/145638961-9b5a5adf-e703-452f-a09f-dc0cdd305f8e.PNG)<br/>

#### Next, acceptor i.e. intern-b will accept the VPC peering connection request and the peering connection status will be active as shown in the figure below;<br/>

![peering request accepted and status seen active](https://user-images.githubusercontent.com/24239688/145638980-053ddf69-7003-4255-9749-24143f7ceb02.PNG)<br/>

#### Next, we add route to peered VPC in private router table as below;

![route added for acceptor vpc](https://user-images.githubusercontent.com/24239688/145639024-4bf5bf3d-f67d-4504-b301-6bb9afb6c860.PNG)<br/>

#### Route table was verified.

![route verified from team a](https://user-images.githubusercontent.com/24239688/145639067-7ba5cdaa-1572-43db-a7f0-f9f041fdf2a3.PNG)<br/>

#### Next, we add router at intern-b as follows;

![route added for intern-a VPC on intern-b vpc](https://user-images.githubusercontent.com/24239688/145639076-a0a2df47-c0f2-4fa0-ad51-c12b298eb980.PNG)<br/>

#### Lastly, we verified the route as shown in the image below.

![route table verified from team b](https://user-images.githubusercontent.com/24239688/145639083-0b517abe-9669-421c-ac5c-cc82ad05e900.PNG)<br/>

