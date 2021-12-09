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
2. Create Route53 Hosted Zone
- Either use your own Domain if you have as <team-name>.<your-domain> OR use mine ie intern.amitj.com.np to create new HZ for your use in pattern <team-name>.intern.amitj.com.np.
- Show nslookup result for your domain.
- Add R53 entry to map above created ALB at URL alb.<team-name>.<your-domain>
3. Create ACM for above created R53 HZ with both top subdomain and its wild card ie <team-name>.<your-domain> and *.<team-name>.<your-domain>
4. Update ALB
- Accept request only when Host = alb.<team-name>.<your-domain>, with default action response Code: 503, Message: “Unknown Request” on both HTTP and HTTPS requests.
- Enable HTTPS support.
- Redirect HTTP to HTTPS.
5. (Optional) Create Private Route53 with domain <team-name>.vpc-local and attach it to your VPC with DNS resolve enable.
- Add A Record to map Private EC2’s Private IP to ec2.<team-name>.vpc-local.
- Run telnet ec2.<team-name>.vpc-local 22, from public EC2 and verify it gets connected.
