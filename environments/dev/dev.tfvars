
project_level_role_iam_member = true
project_id  = ""

role_member_conditions = {

  
  vertex_ai_user = {  
    role = "roles/aiplatform.user"  
    member = "principal://iam.googleapis.com/projects//locations/global/workloadIdentityPools/.svc.id.goog/subject/ns/dev/sa/dev"  
    conditions = []  
  }

}
