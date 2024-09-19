<!-- BEGIN_TF_DOCS -->
# Terraform Aws Cloudfront Module
Terraform module to create an AWS CloudFront distribution

[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://blackbird.cloud)

## Example
```hcl
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
```

## Modules

- [Cache Policy](./modules/cache-policy/README.md)

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2024 [Blackbird Cloud](https://blackbird.cloud)
<!-- END_TF_DOCS -->