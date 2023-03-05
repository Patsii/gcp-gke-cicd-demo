resource "google_artifact_registry_repository" "hello-world-python" {
  location      = var.gcp_region
  repository_id = "hello-world-python"
  format        = "DOCKER"
}