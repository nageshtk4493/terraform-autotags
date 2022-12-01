data "archive_file" "lambda1"{
  type        = "zip"
  source_dir = "./python/"
  output_path = "./python/lambda1.zip"
}