resource "aws_cloudfront_distribution" "resume" {
  enabled             = true
  default_root_object = "index.html"

  comment = "AWS Cloud Resume Challenge Portfolio"

  is_ipv6_enabled = true

  tags = {
    Name = "cloud-resume-challenge"
  }

  origin {
    domain_name              = "laxmikant-cloud-resume-2026-01.s3.us-east-1.amazonaws.com"
    origin_id                = "laxmikant-cloud-resume-2026-01.s3.us-east-1.amazonaws.com-mtu0cd5dbeu"
    origin_access_control_id = "E19Z7MQQBP1I78"
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "laxmikant-cloud-resume-2026-01.s3.us-east-1.amazonaws.com-mtu0cd5dbeu"
    viewer_protocol_policy = "redirect-to-https"
    compress               = true
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:029939913860:global/webacl/CreatedByCloudFront-5cec62a7/67789585-011d-4ef6-b40b-2d0fb23e46e8"
}