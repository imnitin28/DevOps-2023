resource "azuredevops_project" "nm-az" {
  name               = "nm-az Project"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
}

resource "azuredevops_git_repository" "nm-az" {
  project_id = azuredevops_project.nm-az.id
  name       = "nm-az Repository"
  initialization {
    init_type   = "Import"
    source_type = "Git"
    source_url  = "https://github.com/imnitin28/GCP_failover.git"
  }
}

resource "azuredevops_variable_group" "nm-az" {
  project_id   = azuredevops_project.nm-az.id
  name         = "nm-az Pipeline Variables"
  description  = "Managed by Terraform"
  allow_access = true

  variable {
    name  = "FOO"
    value = "BAR"
  }
}

resource "azuredevops_build_definition" "nm-az" {
  project_id = azuredevops_project.nm-az.id
  name       = "nm-az Build Definition"
  path       = "\\nm-azFolder"

  ci_trigger {
    use_yaml = false
  }

  # schedules {
  #   branch_filter {
  #     include = ["master"]
  #     exclude = ["test", "regression"]
  #   }
  #   days_to_build              = ["Wed", "Sun"]
  #   schedule_only_with_changes = true
  #   start_hours                = 10
  #   start_minutes              = 59
  #   time_zone                  = "(UTC) Coordinated Universal Time"
  # }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.nm-az.id
    branch_name = azuredevops_git_repository.nm-az.default_branch
    yml_path    = "azure-pipelines.yml"
  }

  variable_groups = [
    azuredevops_variable_group.nm-az.id
  ]

  variable {
    name  = "PipelineVariable"
    value = "Go Microsoft!"
  }

  variable {
    name         = "PipelineSecret"
    secret_value = "ZGV2cw"
    is_secret    = true
  }
}