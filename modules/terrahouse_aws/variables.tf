variable "user_uuid" {
  type        = string
  description = "User UUID in the format xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

  validation {
    condition     = can(regex("^\\w{8}-\\w{4}-\\w{4}-\\w{4}-\\w{12}$", var.user_uuid))
    error_message = "User UUID must be in the format xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  }
}

variable "bucket_name" {
  type        = string
  description = "AWS S3 bucket name"

  validation {
    condition     = can(regex("^[a-zA-Z0-9.-]{3,255}$", var.bucket_name))
    error_message = "Invalid bucket name. It must consist of 3 to 255 characters, and can only contain lowercase letters, numbers, hyphens, and periods." 
                
  }
}