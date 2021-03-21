# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project
resource "google_project" "service" {
  name = var.project
  project_id = var.project
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service
# https://console.cloud.google.com/apis/library?pli=1
#resource "google_project_service" "api" {
#  service = ""
#}
