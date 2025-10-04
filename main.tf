resource "google_project_iam_member" "project_level_roles" {
  for_each = var.project_level_role_iam_member ? var.role_member_conditions : {} 
  project  = var.project_id
  role     = each.value.role

  member = each.value.member
  dynamic "condition" {
    for_each = each.value.conditions
    content {
      title       = condition.value.title
      description = condition.value.description
      expression  = condition.value.expression
    }
  }
}