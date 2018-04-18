#main.tf script in terraform

provider "aws" {
	region= "us-east-2"
}

resource "aws_s3_bucket" "b" {
	bucket= "echo_stage_test_bucket"
	acl= "private"

	tages {
	     Name= "s3 bucket"
	     Environment= "Dev"
	      }
}

