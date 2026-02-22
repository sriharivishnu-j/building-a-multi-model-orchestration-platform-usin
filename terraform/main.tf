provider "aws" {
  region = var.region
}

resource "aws_ecs_cluster" "main" {
  name = "orchestration-cluster"
}

resource "aws_ecs_service" "main" {
  name            = "orchestration-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.main.arn
  desired_count   = 1
  launch_type     = "FARGATE"
}

resource "aws_ecs_task_definition" "main" {
  family                   = "orchestration-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  container_definitions    = jsonencode([
    {
      "name": "main-container",
      "image": "<your-container-image-url>",
      "cpu": 256,
      "memory": 512,
      "essential": true,
      "portMappings": [
        {
          "containerPort": 80,
          "hostPort": 80
        }
      ]
    }
  ])
}