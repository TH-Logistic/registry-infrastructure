output "instance_public_ip" {
  value = module.instance.public_ip
}

output "key_pair_name" {
  value = module.instance_key_pair.key_pair_name
}