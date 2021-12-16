# Deploying Azure VM as Router

Deploy Azure VM (Linux or Windows) with IP forwarder enabled to be used as Router. All deployments in this document assumes you have already and existing Virtual Network (VNET) and Subnet.

## Deploy Linux VM as Router (IPv4)

This template deploys a Linux Router (Ubuntu 18.04-LTS) to an existing Virtual Network (VNET)/Subnet using a Single NIC + IP Forwarding Enabled +NAT.

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgudszent%2FAzureVM-Router%2Fmaster%2FLinuxRouter.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fgudszent%2FAzureVM-Router%2Fmaster%2FLinuxRouter.json)

