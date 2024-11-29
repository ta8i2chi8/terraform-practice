terraform {
  required_providers {
    aws = {
      version = ">= 4.49.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env   = "terraform-practice"
      Owner = "Morimoto"
      Step  = "step3"
    }
  }
}
