# AWS Lambda Basic Execution Role

[![terraform](https://img.shields.io/github/v/tag/amancevice/terraform-aws-lambda-basic-execution-role?color=62f&label=version&logo=terraform&style=flat-square)](https://registry.terraform.io/modules/amancevice/lambda-basic-execution-role/aws)
[![build](https://img.shields.io/github/workflow/status/amancevice/terraform-aws-lambda-basic-execution-role/validate?logo=github&style=flat-square)](https://github.com/amancevice/terraform-aws-lambda-basic-execution-role/actions)

Lambda IAM role with `AWSLambdaBasicExecution` policy attached

## Usage

```hcl
module basic {
  source          = "amancevice/lambda-basic-execution-role/aws"
  name            = "my-lambda-role"
  attachments     = ["<optional-additional-policy-arns>"]
  inline_policies = ["<optional-additional-inline-policy-docs>"]
}
```
