

output "group_name" {

  value       = aws_iam_group.this.name
  description = "The name of the IAM group"
}
