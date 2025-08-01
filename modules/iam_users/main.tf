
// Create one IAM user for each name in the user_names list
resource "aws_iam_user" "this" {

  for_each = toset(var.user_names)

  name = each.value
}


//Assign each IAM user to the specified IAM group
resource "aws_iam_user_group_membership" "this" {
   
  // Iterate over each IAM user
  for_each = aws_iam_user.this
  // Specify the username
  user = each.value.name
  
  // Attach the user to the provided IAM group
  groups = [
    var.group
  ]

}

