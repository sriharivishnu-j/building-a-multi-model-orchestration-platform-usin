provider "aws" {
  region = "us-west-2"
}

resource "aws_ecs_cluster" "main" {
  name = "multi-model-orchestration-cluster"
}

resource "aws_ecs_task_definition" "main" {
  family = "multi-model-task"
  container_definitions = jsonencode([
    {
      "name": "backend",
      "image": "your-backend-image-uri",
      "essential": true,
      "memory": 512,
      "cpu": 256,
    }
  ])
}
