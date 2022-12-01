resource "aws_lambda_function" "test_lambda" {
  filename      = "./python/lambda1.zip"
  function_name = "lambda1"
  role          = aws_iam_role.autotag123_ec2_role.arn
  handler       = "lambda1.lambda_handler"
source_code_hash = filebase64sha256("./python/lambda1.zip")
  runtime = "python3.9"
  }
