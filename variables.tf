variable name {
  description = "IAM role name."
}

variable attachments {
  description = "Optional additional attached IAM policy ARNs."
  type        = "list"
  default     = []
}
