
module "dynamodb_table" {
  source   = "terraform-aws-modules/dynamodb-table/aws"

  name     = "shil-bookinventory-tf"
  hash_key = "isbn"
  range_key = "genre"

  attributes = [
    {
      name = "isbn"
      type = "S"
    },
    {
      name = "genre"
      type = "S"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}