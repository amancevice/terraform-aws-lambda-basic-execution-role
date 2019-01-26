output role_arn {
  description = "IAM role ARN."
  value       = "${aws_iam_role.role.arn}"
}

output role_name {
  description = "IAM role name."
  value       = "${aws_iam_role.role.name}"
}
