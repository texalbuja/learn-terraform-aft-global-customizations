data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "state_bucket" {
  bucket = "state-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
