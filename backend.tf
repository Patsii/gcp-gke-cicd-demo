# Store infrastructure state in remote state file in a separate Cloud Storage bucket

terraform {
  backend "gcs" {
    bucket  = "tf-managed-project-demotfstate"
    prefix  = "terraform/tfstate"
    #credentials = "credentials.json"
  }
}