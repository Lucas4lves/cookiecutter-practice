terraform {
  backend "s3" {
    bucket = {{ cookiecutter.bucket_name }}
    key    = {{ cookiecutter.bucket_tf_key }}
    region = {{ cookiecutter.aws_region }}
  }
}