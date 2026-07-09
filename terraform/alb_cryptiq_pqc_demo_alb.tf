resource "aws_lb_listener" "cryptiq_pqc_demo_alb" {
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:239302214458:loadbalancer/app/cryptiq-pqc-demo-alb/6ed0d949cc94d81f"
  port              = "443"
  protocol          = "HTTPS"

  ssl_policy = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"

  default_action {
    type             = "forward"
    target_group_arn = "<your-target-group-arn>"
  }
}
