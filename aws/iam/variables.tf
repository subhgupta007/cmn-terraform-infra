variable "policy_name" {
  type        = string
  description = "Provide the name of the policy"
}

variable "policy_description" {
  type        = string
  description = "Provide the description of the policy"
}

variable "policy_statement" {
  type        = string
  description = "Provide the name of the policy"
}

variable "role_name" {
  type        = string
  description = "Provide the name of the iam role"
}

variable "assume_role_policy" {
  type        = string
  description = "provide the cloudwatch policy can be json format"
}

variable "max_session_duration" {
  type        = number
  description = "maximum session duration (in seconds) that you want to set for the specified role"
  default     = 3600
}
