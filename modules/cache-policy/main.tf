resource "aws_cloudfront_cache_policy" "default" {
  name        = var.name
  comment     = var.description
  min_ttl     = var.min_ttl
  default_ttl = var.default_ttl
  max_ttl     = var.max_ttl

  parameters_in_cache_key_and_forwarded_to_origin {
    enable_accept_encoding_brotli = var.enable_accept_encoding_brotli
    enable_accept_encoding_gzip   = var.enable_accept_encoding_gzip

    cookies_config {
      cookie_behavior = var.cookies_config.cookie_behavior

      dynamic "cookies" {
        for_each = var.cookies_config.cookies != null ? [true] : []
        content {
          items = var.cookies_config.cookies
        }
      }
    }

    headers_config {
      header_behavior = var.headers_config.header_behavior

      dynamic "headers" {
        for_each = var.headers_config.headers != null ? [true] : []
        content {
          items = var.headers_config.headers
        }
      }
    }

    query_strings_config {
      query_string_behavior = var.query_strings_config.query_string_behavior

      dynamic "query_strings" {
        for_each = var.query_strings_config.query_strings != null ? [true] : []
        content {
          items = var.query_strings_config.query_strings
        }
      }
    }
  }
}
