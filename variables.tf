variable "name" {
  description = "IAM role name."
}

variable "inline_policies" {
  description = "Optional additional inline IAM policy documents."
  type        = list(string)
  default     = []
}

variable "attachments" {
  description = "Optional additional attached IAM policy ARNs."
  type        = list(string)
  default     = []
}
