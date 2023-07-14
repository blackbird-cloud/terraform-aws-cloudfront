## Cache Policy
A Terraform module which helps you create AWS Cloudfront Cache Policies. Read [this](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html) page for more information.

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.8.0 |

### Resources

| Name | Type |
|------|------|
| [aws_cloudfront_cache_policy.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | A comment for the cache policy. | `string` | n/a | yes |
| <a name="input_cookies_config"></a> [cookies\_config](#input\_cookies\_config) | `cookie_behavior` - (Required) Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for cookie\_behavior are `none`, `whitelist`, `allExcept`, and `all`. `cookies` - (Optional) Object that contains a list of cookie names. See Items for more information. | <pre>object({<br>    cookie_behavior = string<br>    cookies         = optional(list(string))<br>  })</pre> | <pre>{<br>  "cookie_behavior": "none"<br>}</pre> | no |
| <a name="input_default_ttl"></a> [default\_ttl](#input\_default\_ttl) | Default amount of time (in seconds) that an object is in a CloudFront cache | `number` | n/a | yes |
| <a name="input_enable_accept_encoding_brotli"></a> [enable\_accept\_encoding\_brotli](#input\_enable\_accept\_encoding\_brotli) | Flag determines whether the Accept-Encoding HTTP header is included in the cache key and in requests that CloudFront sends to the origin. | `bool` | n/a | yes |
| <a name="input_enable_accept_encoding_gzip"></a> [enable\_accept\_encoding\_gzip](#input\_enable\_accept\_encoding\_gzip) | Whether the Accept-Encoding HTTP header is included in the cache key and in requests sent to the origin by CloudFront. | `bool` | n/a | yes |
| <a name="input_headers_config"></a> [headers\_config](#input\_headers\_config) | `header_behavior` - (Required) Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `header_behavior` are `none` and `whitelist`. `headers` - (Optional) Object contains a list of header names. See Items for more information. | <pre>object({<br>    header_behavior = string<br>    headers         = optional(list(string))<br>  })</pre> | <pre>{<br>  "header_behavior": "none"<br>}</pre> | no |
| <a name="input_max_ttl"></a> [max\_ttl](#input\_max\_ttl) | Maximum amount of time (in seconds) that an object is in a CloudFront cache | `number` | n/a | yes |
| <a name="input_min_ttl"></a> [min\_ttl](#input\_min\_ttl) | Minimum amount of time that you want objects to stay in CloudFront caches | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the cache policy. | `string` | n/a | yes |
| <a name="input_query_strings_config"></a> [query\_strings\_config](#input\_query\_strings\_config) | `query_string_behavior` - (Required) Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `query_string_behavior` are `none`, `whitelist`, `allExcept`, and `all`. `query_strings` - (Optional) Configuration parameter that contains a list of query string names. See Items for more information. | <pre>object({<br>    query_string_behavior = string<br>    query_strings         = optional(list(string))<br>  })</pre> | <pre>{<br>  "query_string_behavior": "none"<br>}</pre> | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_cache_policy"></a> [cache\_policy](#output\_cache\_policy) | The created Cloudfront Cache policy. |