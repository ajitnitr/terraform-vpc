resource "aws_vpc_peering_connection" "foo" {
  peer_owner_id = data.aws_caller_identity.current.account_id
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = aws_vpc.foo.id
  auto_accept   = true
}
