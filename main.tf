provider "github" {
    token = var.github_token
}

resource "github_user_ssh_key" "repo_key" {
    title   = "Terraform SSH Key"
    key     = file("~/.ssh/id_ras.pub")     
}

# Step 2: Create a GitHub repository
resource "github_repository" "terraform_repo" {
  name        = "my-terraform-repo"
  description = "A Terraform-managed repository"  
  visibility  = "public"                

  # Optional settings
  has_issues         = true
}
