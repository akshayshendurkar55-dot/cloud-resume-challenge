resource "aws_iam_policy" "visitor_counter_dynamodb" {
  name        = "VisitorCounterDynamoDBUpdatePolicy"
  description = "Allows Lambda to update only the visitor-counter DynamoDB table"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "dynamodb:UpdateItem"
        ]

        Resource = "arn:aws:dynamodb:us-east-1:029939913860:table/visitor-counter"
      }
    ]
  })
}


resource "aws_iam_role_policy_attachment" "visitor_counter_dynamodb" {
  role       = "visitor-counter-role-edoja7uo"
  policy_arn = aws_iam_policy.visitor_counter_dynamodb.arn
}


resource "aws_iam_role" "visitor_counter" {
  name = "visitor-counter-role-edoja7uo"

  path = "/service-role/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "lambda.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}