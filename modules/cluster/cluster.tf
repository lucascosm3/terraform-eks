resource "aws_eks_cluster" "eks_cluster" {
  name     = "${var.project_name}-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [
      var.public_subnet_1a,
      var.public_subnet_1b
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }
  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_role_attachment
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-cluster"
    }
  )
}