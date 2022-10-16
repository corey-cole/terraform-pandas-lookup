module "pandas_sdk_layer" {
  // Relative path for testing.  Use commented line to point to GitHub version
  source = "../../"
  //source = "github.com/corey-cole/terraform-pandas-lookup"

  region       = var.region
  architecture = var.architecture
  runtime      = var.runtime
}