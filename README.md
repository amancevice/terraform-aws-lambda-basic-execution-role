# AWS Lambda Basic Execution Role

Lambda IAM role with `AWSLambdaBasicExecution` policy attached

## Usage

```hcl
module basic {
  source      = "amancevice/lambda-basic-execution-role/aws"
  name        = "my-lambda-role"
  attachments = ["<optional-additional-policy-arns>"]
}
```
