provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

terraform {
  required_version = ">= 1"

  backend "s3" {
    bucket = "iesapuri-tfstate"
    # key    = "iesapuri/iesapuri-${var.env}.tfstate"
    key    = "iesapuri/iesapuri-stg.tfstate"
    region = "ap-northeast-1"
  }
}
