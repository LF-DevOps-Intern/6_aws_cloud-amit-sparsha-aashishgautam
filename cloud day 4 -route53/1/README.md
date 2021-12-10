1. Create Application Load balancer 
- Start a simple server in private EC2 8880
- Target ALB to serve that server
- ALB should be accessible through port 80 listener
- Health Check
 - Register healthy on 3 success
 - Register unhealthy on 5 success
 - Timeout 5 Seconds
 - Interval 45 Seconds
- Access the server via ALB publicly using ALB’s DNS name.

Steps:
