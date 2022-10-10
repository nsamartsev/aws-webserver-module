module "webserver_instance" {
  # count = ?
  source           = "./instance_module"
  instance_profile = aws_iam_instance_profile.web_console_session_profile.id
  security_group   = aws_security_group.webserver_sg.id
}
