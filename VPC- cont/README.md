All task are in continuation of yesterday’s setup. Use same VPC and tag convention for all resources.
(Optional) Enable VPC Flow Logs via CloudWatch Log.
- Create 3 subnets in each AZ to be used as public.
- Create 3 subnets in each AZ to be used as private.
- Create Public Route Table and associate public subnets.
- Create Private Route Table and associate private subnets.
- Create Internet Gateway and attach its route in public route table.
- Create NAT (and EIP for it) and attach its route in private route table.
- Create S3 VPC Endpoint and add its route to both public and private Route tables.
- Create EC2 inside Public Subnet (t
  - Allow SSH ingress traffic for your own IPs only.
  - Spin up simple http server @ 9099 port and verify it is accessible from public.
  - Install and Setup OpenVPN Server, open ports required to use it for these CIDR ranges 27,43,45,72,103,110,112,124,139,150,163,202.0.0.0/8 and your own IPs
  - (Optional) Create a OpenVPN Client with Split tunnel to use that Server Help1, Help2, Help3
Create another EC2 inside Private Subnet
 - Only allow inbound traffic within VPC
 - Install PostgreSQL and open its port to VPC only.
 - Connect to PostgreSQL from above created VPC.
 - (Optional) Connect to PostgreSQL server from your local PC (hint: use OpenVPN connection)
