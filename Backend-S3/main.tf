resource "aws_s3_bucket" "mybucket" {
    bucket = var.aws_s3_bucket  
}

resource "aws_dynamodb_table" "mydblock" {
    name = var.aws_dynamodb_table
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }      
}

resource "aws_instance" "karthik" {
    instance_type = var.instance_type
    ami = var.ami
    subnet_id = var.subnet_id  
}

