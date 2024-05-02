resource "aws_iam_policy" "eks_controller_policy" {
  name = "${var.project_name}-aws-load-balancer-controller"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("${path.module}/iam_policy.json")
  tags   = var.tags
}
