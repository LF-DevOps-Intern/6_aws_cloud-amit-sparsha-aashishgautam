1. VPC peer from your team’s VPC to next team ie A->B, B->C, …, E->A.
    - Allow both direction VPC Traffic.
    - Add route to peered VPC in private Route Table.
    - https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html
2. reate RDS cluster and instance of PostgreSQL.
    - Deploy in private subnet.
    - In your private EC2. Connect to the RDS Postgresql.
    - (Optional) Validate you can connect to another team’s (A->B and B->C) RDS (Peer must be completed)
3. Install AWS CLIv2 and config lft-training profile.
4. Create ECR and upload your Docker image created during Docker assignment Q3.
    - Each member must upload an image (in team’s ECR repo) with their name as tag.
5. Deploy *one* of uploaded image in ECS Fargate.
    - Create task definition.
    - Deploy in Public Subnet.
    - Access via assigned Public IP and your port.
6. Create a S3 bucket
    - Upload Dockerfile of Q4 in the bucket using AWS CLI.
