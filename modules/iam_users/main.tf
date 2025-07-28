
//create resource aws_iam_user 
resource "aws_iam_user" "this" {
  //name = var.user_names

  for_each = toset(var.user_names)

  name = each.value
}

//attach user to group 
resource "aws_iam_user_group_membership" "this" {

  for_each = aws_iam_user.this
  //user = aws_iam_user.this.name
  user = each.value.name

  groups = [
    var.group
  ]

}

