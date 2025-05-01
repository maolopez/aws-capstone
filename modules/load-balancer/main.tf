resource "aws_elb" "elb" {
  name                      = "${var.project}-elb"
  security_groups           = [var.allow_http_id, var.allow_https_id]
  subnets                   = [var.subnet_a_id, var.subnet_b_id]
  cross_zone_load_balancing = true

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:8082/"
  }

  listener {
    lb_port            = 443
    lb_protocol        = "HTTPS"
    instance_port      = 8082
    instance_protocol  = "HTTP"
    ssl_certificate_id = aws_iam_server_certificate.example_certificate.arn
  }
}
