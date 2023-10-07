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

variable "index_html_filepath" {
  type        = string
  description = "Path to the index.html file"

  validation {
    condition     = fileexists(var.index_html_filepath)
    error_message = "The specified index_html_filepath does not exist."
  }
}

variable "error_html_filepath" {
  type        = string
  description = "Path to the error.html file"

  validation {
    condition     = fileexists(var.error_html_filepath)
    error_message = "The specified error_html_filepath does not exist."
  }
}

variable "content_version" {
  type        = number
  description = "Positive integer representing the content version"

  validation {
    condition     = var.content_version > 0 && ceil(var.content_version) == var.content_version
    error_message = "Content version must be a positive integer starting at 1."
  }
}

variable "assets_path" {
  description = "Path to assets folder"
  type = string
  
}