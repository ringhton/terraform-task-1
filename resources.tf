resource "gitlab_project" "terraform" {
  name          = "terraform-task-1"
  description   = "This is a description for terraform task"
  namespace_id = data.gitlab_group_subgroups.subgroups.id
}

resource "gitlab_deploy_key" "git_key" {
  project = gitlab_project.terraform.id
  title   = "gitlab public key"
  key     = var.pubkey 
  can_push= "true"
}
