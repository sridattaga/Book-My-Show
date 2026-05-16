resource "aws_eks_cluster" "bms" {
  name = "bms-eks"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = aws_subnet.public[*].id
  }
}
