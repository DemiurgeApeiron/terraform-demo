provider "aws" {
  region = "us-west-1"
  alias  = "aws-west"
}


# # for non hashicorp mainteind providers configuration 
# terraform {
#     required_providers {
#         aws = {
#             source = "hashicorp/aws"
#             version = "~> 3.0"
#         }
#     }
# }
# provider "aws" {
#   region = "us-west-1"
#   alias  = "aws-west"

# }

