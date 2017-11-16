#!/bin/bash
group = "PacktPublishing"
location = "eastus"
vnet = "vnet-packt"
bastionip = "BastionIP"
bastionnsg = "BastionNICNSG"

# Create the Bastion Host Standalone Virtual Machine
# Create a virtual network card and associate with public IP address and NSG
az network nic create --resource-group $group --name BastionNIC --subnet BaseSubnet --location $location \
            --public-ip-address $bastionip --network-security-group $bastionnsg --vnet-name $vnet

# Create a virtual machine configuration
vmName = "vm-bastion-sc"
az compute vm --resource-group $group --name $vmName