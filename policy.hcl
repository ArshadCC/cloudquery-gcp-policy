policy "my_policy" {
  title = "my_policy"

  configuration {
    provider "gcp" {
      version = ">= 0.6.3"
    }
  }

  check "gcp_storage_query" {
    type = "manual"
    query = "SELECT project_id, name, self_link AS link FROM gcp_storage_buckets WHERE iam_configuration_uniform_bucket_level_access_enabled = FALSE;"
  }
}
