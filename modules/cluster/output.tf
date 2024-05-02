output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id

}

output "oidc" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}
