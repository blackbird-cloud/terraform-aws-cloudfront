module "cache_policy" {
  source  = "blackbird-cloud/cloudfront/aws//modules/cache-policy"
  version = "~> 1"

  name                          = "my-policy"
  min_ttl                       = 300
  default_ttl                   = 0
  max_ttl                       = 0
  description                   = "My cache policy"
  enable_accept_encoding_gzip   = false
  enable_accept_encoding_brotli = false
}
