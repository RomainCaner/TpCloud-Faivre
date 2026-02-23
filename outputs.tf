# ── Partie 2 ──────────────────────────────────────────────────────────────────
output "resource_group_id" {
  description = "ID du Resource Group créé"
  value       = azurerm_resource_group.rg.id
}

output "vnet_name" {
  description = "Nom du Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  description = "ID du Subnet"
  value       = azurerm_subnet.subnet.id
}

# ── Partie 5 ──────────────────────────────────────────────────────────────────
output "load_balancer_public_ip" {
  description = "IP publique du Load Balancer — utilisez cette adresse pour tester"
  value       = azurerm_public_ip.lb_pip.ip_address
}

output "vm_names" {
  description = "Noms des VMs déployées"
  value       = azurerm_linux_virtual_machine.vm[*].name
}

output "ssh_commands" {
  description = "Connexion SSH impossible directement (pas d'IP publique sur les VMs)"
  value       = "Les VMs n'ont pas d'IP publique. Trafic uniquement via le Load Balancer."
}

output "test_command" {
  description = "Commande pour tester le Load Balancer"
  value       = "curl http://${azurerm_public_ip.lb_pip.ip_address}"
}
