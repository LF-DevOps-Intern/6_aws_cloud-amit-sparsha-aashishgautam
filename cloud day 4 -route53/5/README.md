5. (Optional) Create Private Route53 with domain <team-name>.vpc-local and attach it to your VPC with DNS resolve enable.
- Add A Record to map Private EC2’s Private IP to ec2.<team-name>.vpc-local.
- Run telnet ec2.<team-name>.vpc-local 22, from public EC2 and verify it gets connected.

Steps:
