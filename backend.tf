
terraform {
backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "shil-ce13/rs.tfstate"
    region = "us-east-1"
}
}