4. Update ALB
- Accept request only when Host = alb.<team-name>.<your-domain>, with default action response Code: 503, Message: “Unknown Request” on both HTTP and HTTPS requests.
- Enable HTTPS support.
- Redirect HTTP to HTTPS.

Steps:
