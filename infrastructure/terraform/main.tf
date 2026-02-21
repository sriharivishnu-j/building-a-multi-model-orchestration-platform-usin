provider "aws" {
  region = "us-west-2"
}

resource "aws_ecs_cluster" "example" {
  name = "my-cluster"
}

resource "aws_ecs_service" "service" {
  name            = "my-service"
  cluster         = aws_ecs_cluster.example.id
  desired_count   = 1
  launch_type     = "FARGATE"

  task_definition = aws_ecs_task_definition.example.arn
}

resource "aws_ecs_task_definition" "example" {
  family                   = "service"
  container_definitions    = jsonencode([{
    name  = "web"
    image = "nginx"
    cpu   = 256
    memory = 512
  }])
}