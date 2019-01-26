variable name {
  description = "IAM role name."
}

variable inline_policies {
  description = "Optional additional inline IAM policy documents."
  type        = "list"
  default     = []
}

variable attachments {
  description = "Optional additional attached IAM policy ARNs."
  type        = "list"
  default     = []
}
