# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "xxxxxxxx"
  password    = "zzzzzzzz"
  tenant_name = "OTCyyyyyyyyyyyyyyyyyyyy"
  auth_url    = "https://iam.eu-de.otc.t-systems.com:443/v3"
}

# Configure AWS provider to use OTC OBS (S3 compatible)
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "eu-de"
  skip_region_validation = true
  skip_credentials_validation = true
  endpoints {
    s3 = "https://obs.eu-de.otc.t-systems.com/"
  }
}
