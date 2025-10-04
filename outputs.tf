output "project_account_iam_members" {  
  description = "IAM bindings for service accounts, including roles, members, and conditions."  
  
  value = {  
    for binding_key, binding in google_project_iam_member.project_level_roles : binding_key => {  
      role     = binding.role  
      member  = binding.member  
      conditions = binding.condition != null ? [  
        for cond in binding.condition : {  
          title       = cond.title  
          description = cond.description  
          expression  = cond.expression  
        }  
      ] : []  
    }  
  }  
}  