resource "aws_iam_policy" "default" {
  name        = var.policy_name
  description = var.policy_description
  policy      = var.policy_statement
}

resource "aws_iam_role" "default" {
  name                  = var.role_name
  assume_role_policy    = var.assume_role_policy
  max_session_duration  = var.max_session_duration
  force_detach_policies = true
}

resource "aws_iam_role_policy_attachment" "default" {
  role       = aws_iam_role.default.name
  policy_arn = aws_iam_policy.default.arn
}
