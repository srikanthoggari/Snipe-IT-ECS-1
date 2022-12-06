variable "aws_region" {
  description = "region"
  type = string
  default = "us-east-1"
}
variable "my_alb_name" {
  default = "alb-with-terra"
}
variable "my_tg_name" {
  default = "tg-with-terra"
}
variable "my-task-def-name" {
  default = "snipe-mysql-terra"
}
variable "my-task-def-vol" {
  default = "snipesql-vol"
}