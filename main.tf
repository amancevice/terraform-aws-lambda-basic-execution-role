data aws_iam_policy_document assume_role {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource aws_iam_role role {
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  name               = var.name
}

resource aws_iam_role_policy_attachment basic {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.role.name
}

resource aws_iam_role_policy_attachment additional {
  count      = length(var.attachments)
  policy_arn = element(var.attachments, count.index)
  role       = aws_iam_role.role.name
}

resource aws_iam_role_policy inline {
  count      = length(var.inline_policies)
  policy     = element(var.inline_policies, count.index)
  role       = aws_iam_role.role.id
}
