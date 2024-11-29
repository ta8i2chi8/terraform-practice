# terraform {
#   backend "s3" {
#     bucket         = "terraform-practice-morimoto-tfstate"
#     key            = "terraform-practice-morimoto/terraform.tfstate"
#     encrypt        = true
#     dynamodb_table = "terraform-practice-morimoto-tfstate-lock"
#     region         = "ap-northeast-1"
#   }
# }
