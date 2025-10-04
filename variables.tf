variable "project_id" {
  description = "The ID of the project"
  type        = string
}

variable "region" {
  description = "The region in which to create resources."
  type        = string
  default     = "us-central1"
}

variable "project_level_role_iam_member" {
  description = "Assign the role to the members"
  type        = bool
  default     = false
}

variable "role_member_conditions" {
  type = map(object({
    role       = string
    member    = string
    conditions = list(object({
      title       = string
      description = string
      expression  = string
    }))
  }))
  default =  {}
  }
////////////////////////////////// Example:{
////////////////////////////////// Example:    "role1" = {
////////////////////////////////// Example:      role    = "roles/storage.admin"
////////////////////////////////// Example:      member = "user:alice@example.com"
////////////////////////////////// Example:      conditions = [
////////////////////////////////// Example:        {
////////////////////////////////// Example:          title       = "Condition1"
////////////////////////////////// Example:          description = "Description1"
////////////////////////////////// Example:          expression  = "expression1"
////////////////////////////////// Example:        }
////////////////////////////////// Example:      ]
////////////////////////////////// Example:    }
////////////////////////////////// Example:    "role2" = {
////////////////////////////////// Example:      role    = "roles/storage.viewer"
////////////////////////////////// Example:      member = "user:charlie@example.com"
////////////////////////////////// Example:      conditions = [
////////////////////////////////// Example:        {
////////////////////////////////// Example:          title       = "Condition2"
////////////////////////////////// Example:          description = "Description2"
////////////////////////////////// Example:          expression  = "expression2"
////////////////////////////////// Example:        }
////////////////////////////////// Example:      ]
////////////////////////////////// Example:    }
////////////////////////////////// Example:}

