# Bucket Name: file-trigger | Lambda Function Name: manip  </br>

> For lambda trigger, Lambda Function is created and the Necessary IAM policies should be attached to get the lambda function triggered.
And for triggering the lambda or invocation of lambda we should create a event notification that has to be configured to trigger lambda.</br>


+  Test Case:
    Uploading filename starting with make_public , ACL is updated to public-read so that the object is accessible through the s3 link to the object.
    Else the object won't be accessible to public.