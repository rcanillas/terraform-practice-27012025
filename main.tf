provider "github" {
    token = var.github_token
}

resource "github_user_ssh_key" "repo_key" {
    title   = "Terraform SSH Key"
    key     = file("~/.ssh/id_ras.pub")     
}