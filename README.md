1. Create a VPC with CIDR 10.15.{8*team#}.0/22; no custom subnets.
- Use us-east-1 (odd) or us-east-2 (even) regions.
2. Start a EC2 (in default VPC of the region)
- Amazon Linux OS
- Use t2.micro instance (Free Tire)
- Attach 10GB General EBS (detachable)
- Should be publicly accessible
- Access the the EC2 via SSH
- Install OpenVPN package inside the EC2
Tags:
Team-Name, Member-1/2/3, Resource Name must include team name too team-1-vpc, team-1-public-subnet

