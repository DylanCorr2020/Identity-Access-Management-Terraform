

output "developers_group_name" {

  value       = aws_iam_group.developers.name
  description = "The name of the developers IAM group"
}
