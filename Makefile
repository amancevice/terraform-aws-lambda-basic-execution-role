validate: | .terraform
	terraform fmt -check
	AWS_REGION=us-east-1 terraform validate

.PHONY: validate

.terraform:
	terraform init
