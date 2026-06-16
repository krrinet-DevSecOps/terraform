# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform { 
  backend "s3" {
    bucket = "t60-s3-for-tfstate"
    key    = "tools/tools-env/terraform.tfstate"
    region = "us-east-1"
  }
}
