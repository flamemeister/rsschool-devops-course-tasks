terraform {
  backend "s3" {
    bucket = "my-bucket-aldiyar"         # Your S3 bucket name
    key    = "state/terraform.tfstate"   # The path to the state file in the bucket (customizable)
    region = "eu-central-1"              # Your AWS region
    encrypt = true                       # Enable encryption for security
    dynamodb_table = "mycomponents_tf_lockid" # DynamoDB table for state locking
  }
}
