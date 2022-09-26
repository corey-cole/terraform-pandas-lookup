# terraform-pandas-lookup

## Background
The AWS SDK for Pandas (nee AWS Data Wrangler) publishes Lambda layers.  The layers can be copied into
an account via a Serverless Application present in the Serverless Application Repository.  For example,
[here is the SAR for the x86_64/Python 3.9 layer](https://serverlessrepo.aws.amazon.com/applications/us-east-1/336392948345/aws-sdk-pandas-layer-py3-9).  If you can use SAR, you should use that instead of this module.

This module is intended for the use case when SAR applications are blocked by SCP or other IAM control.