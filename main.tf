#main.tf script in terraform

provider "aws" {
	region= "us-east-2"
}

resource "aws_s3_bucket" "echo_stage_bucket" {
	bucket= "echo_stage_test_bucket"
	acl= "private"

	tages {
	     Name= "s3 bucket"
	     Environment= "Dev"
	      }
}

#data "terraform_remote_state" "store_tf_state" {
 #  backend= "s3"

#	config {
#	bucket = "$(aws_s3_bucket.echo_stage_bucket.bucket)"
#	key = "state_file/terraform.tfstate"
#	region = "us-east-1"
#	profile = "default"
 #    }
#}
