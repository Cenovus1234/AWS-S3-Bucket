provider "aws" {
        region = "us-east-2"
 }

   resource "aws_instance" "mtanweer" {
        ami = "ami-916f59f4"
        instance_type = "t2.micro"
        key_name = "Devops_key"
        security_groups= ["tan-sec"]
        #group ID= sg-2979f442
        tags {
         Name = "terraform-instance-sunila"
        }}
   resource "aws_s3_bucket" "mtanweer" {
        bucket= "myaws-s3-bucket-sunila"
        acl= "private"
 }
