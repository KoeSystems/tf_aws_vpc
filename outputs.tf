output "vpc_id"                     { value = "${aws_vpc.mod.id}" }
output "ipv4_cidr_block"            { value = "${aws_vpc.mod.cidr_block}" }
output "ipv6_cidr_block"            { value = "${aws_vpc.mod.ipv6_cidr_block }" }
output "domain_name"                { value = "${var.domain_name}" }
output "nat_ids"                    { value = "${join(",", aws_eip.mod.*.id) }" }
output "nat_private_ips"            { value = "${join(",", aws_eip.mod.*.private_ip) }" }
output "nat_public_ips"             { value = "${join(",", aws_eip.mod.*.public_ip) }" }
output "subnets_private_ids"        { value = "${join(",", aws_subnet.private.*.id) }" }
output "subnets_private_cidr_block" { value = "${join(",", aws_subnet.private.*.cidr_block) }" }
output "subnets_public_ids"         { value = "${join(",", aws_subnet.public.*.id) }" }
output "subnets_public_cidr_block"  { value = "${join(",", aws_subnet.public.*.cidr_block) }" }
output "rtb_private_ids"            { value = "${join(",", aws_route_table.private.*.id) }" }
output "rtb_public_ids"             { value = "${join(",", aws_route_table.public.*.id) }" }
output "route_private_rtb_ids"      { value = "${join(",", aws_route_table.private.*.route_table_id) }" }
output "route_public_rtb_ids"       { value = "${join(",", aws_route_table.public.*.route_table_id) }" }
output "secondary_public_zone_id"   { value = "${aws_route53_zone.secondary_public.zone_id}" }
output "secondary_private_zone_id"  { value = "${aws_route53_zone.secondary_private.zone_id}" }