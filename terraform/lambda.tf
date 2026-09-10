resource "aws_lambda_function" "visitor_counter" {
  function_name = "visitor-counter"

  role = "arn:aws:iam::029939913860:role/service-role/visitor-counter-role-edoja7uo"

  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.14"
  architectures = ["x86_64"]

  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")
}