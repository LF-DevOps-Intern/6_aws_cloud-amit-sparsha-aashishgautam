1. Validate your email address in SES.
2. Create SNS topic.
- Add subscription as Protocol Email, and endpoint your Email Address.
3. Create Event Bridge rule to monitor EC2 state change events. Set above created SNS topic as target.
4. (Optional)
- Create standard SQS.
- Add this SQS as target in above created Event Bridge rule (in addition to existing SNS)
- Add lambda trigger in SQL to sendEmail lambda function.
