variable "access_key" {}
variable "secret_key" {}
variable "aws_s3_bucket" {
    description = "name of s3 bucket"
    #default = "sappidibucket"  
}
variable "aws_dynamodb_table" {
    description = "name of DB-table"
    #default = "mydblock"  
}
variable "ami" {
    description = "value for the ami"
    #default = "ami-007020fd9c84e18c7"  
}
variable "instance_type" {
    description = "value for the instance_type"
    #default = "t2.micro"  
}
variable "subnet_id" {
    description = "value for the sunet_id"
    #default = "subnet-052cbf3a2ff6ce075"  
}