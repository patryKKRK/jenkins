terraform {
  backend "s3" {
    bucket  = "patrykorlikowski1"
    key     = "jenkins.tfstate"
    region  = "eu-central-1"
    profile = "chaos-playground"
  }
}
provider "aws" {
  profile = "chaos"
  region  = "eu-central-1"
}

