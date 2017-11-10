#!/bin/bash
group = "PacktPublishing"
location = "eastus"

# Create the new VNet with three Subnets
az network vnet create --resource-group $group --location $location --name vnet-pack --address-prefixes "10.0.0.0/24" \
        --subnet-name BaseSubnet --subnet-prefix "10.0.0.0/27"
az network vnet subnet create -resource-group $group --vnet-name vnet-packt --name WebSubnet --address-prefix "10.0.0.32/27"
az network vnet subnet create -resource-group $group --vnet-name vnet-packt --name DBSubnet --address-prefix "10.0.0.64/27"

# Create Public IPs for External Load Balancer and Bastion Host
az network public-ip create --resource-group $group --location $location --name WebLBIP --allocation-method Static \
        --version IPv4 
az network public-ip create --resource-group $group --location $location --name BastionIP --allocation-method Static \
        --version IPv4 

# Only need to create one of the Load Balancers: Internal. The external gets created by the VM Scale Set