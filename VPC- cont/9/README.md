9. Create another EC2 inside Private Subnet
 - Only allow inbound traffic within VPC
 - Install PostgreSQL and open its port to VPC only.
 - Connect to PostgreSQL from above created VPC.
 - (Optional) Connect to PostgreSQL server from your local PC (hint: use OpenVPN connection)
Steps:
Only allow inbound traffic within VPC<br/>

![Postgres sql allowed within the VPC only](https://user-images.githubusercontent.com/53372486/145211209-92ae5d86-c4b0-4469-852c-5bd1442a55cd.PNG)<br/>
Checking 

![Postgres sql allowed within the VPC only verfiied](https://user-images.githubusercontent.com/53372486/145211226-c4ebdd93-1427-4cd9-861e-fca3f5276825.PNG)<br/>

Install PostgreSQL and open its port to VPC only <br/>

![psql_host_machine](https://user-images.githubusercontent.com/53372486/145211216-2e5e85d5-26f2-42be-95cc-09770b3d94c4.png)<br/>

Connect to PostgreSQL from above created VPC.<br/>

![psql_vpc_connect](https://user-images.githubusercontent.com/53372486/145211220-d271bb60-a1a3-4f64-ad45-ce74ef3b17c1.png)<br/>

 Connect to PostgreSQL server from your local PC<br/>

![connect psql in local](https://user-images.githubusercontent.com/53372486/145211225-7bffe8f2-73dc-44d4-b66d-e203dc778c6b.png)<br/>


