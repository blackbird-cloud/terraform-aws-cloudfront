variable "name" {
  type        = string
  description = "The name of the cache policy."
}

variable "description" {
  type        = string
  description = "A description for the cache policy."
}

variable "min_ttl" {
  type        = number
  description = "Minimum amount of time that you want objects to stay in CloudFront caches"
}

variable "default_ttl" {
  type        = number
  description = "Default amount of time (in seconds) that an object is in a CloudFront cache"
}

variable "max_ttl" {
  type        = number
  description = "Maximum amount of time (in seconds) that an object is in a CloudFront cache"
}

variable "enable_accept_encoding_gzip" {
  type        = bool
  description = "Whether the Accept-Encoding HTTP header is included in the cache key and in requests sent to the origin by CloudFront."
}

variable "enable_accept_encoding_brotli" {
  type        = bool
  description = "Flag determines whether the Accept-Encoding HTTP header is included in the cache key and in requests that CloudFront sends to the origin."
}

variable "cookies_config" {
  type = object({
    cookie_behavior = string
    cookies         = optional(list(string))
  })
  default     = { cookie_behavior = "none" }
  description = "`cookie_behavior` - (Required) Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for cookie_behavior are `none`, `whitelist`, `allExcept`, and `all`. `cookies` - (Optional) Object that contains a list of cookie names. See Items for more information."
}

variable "headers_config" {
  type = object({
    header_behavior = string
    headers         = optional(list(string))
  })
  default     = { header_behavior = "none" }
  description = "`header_behavior` - (Required) Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `header_behavior` are `none` and `whitelist`. `headers` - (Optional) Object contains a list of header names. See Items for more information."
}


variable "query_strings_config" {
  type = object({
    query_string_behavior = string
    query_strings         = optional(list(string))
  })
  default     = { query_string_behavior = "none" }
  description = "`query_string_behavior` - (Required) Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `query_string_behavior` are `none`, `whitelist`, `allExcept`, and `all`. `query_strings` - (Optional) Configuration parameter that contains a list of query string names. See Items for more information."
}
