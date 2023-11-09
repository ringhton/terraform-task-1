data "gitlab_group" "devops_users_repos" {
  group_id = var.my_group
}

data "gitlab_group_subgroups" "subgroups" {
  group_id = var.my_subgroup
}
