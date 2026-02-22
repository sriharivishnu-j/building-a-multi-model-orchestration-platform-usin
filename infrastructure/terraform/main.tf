provider "aws" {
  region = "us-west-2"
}

resource "aws_ecs_cluster" "ecs_cluster" {
  name = "multi-model-orchestration-cluster"
}

resource "aws_ecs_service" "fastapi_service" {
  name            = "fastapi-service"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  desired_count   = 2
  launch_type     = "FARGATE"
  task_definition = aws_ecs_task_definition.fastapi_task.arn
}