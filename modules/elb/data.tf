/**
 * ACM 인증서를 발급받은 도메인 이름
 */
data "aws_acm_certificate" "acm" {
  domain = "sympleops.ml"
}
