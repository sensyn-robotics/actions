#!/bin/bash -eu
ip=$(curl -s https://httpbin.org/ip | jq -r '.origin')
az login --service-principal --username $1 --password $2 --tenant $3
az network nsg rule create \
  --resource-group $4 \
  --nsg-name $5 \
  --name AllowFromGitHubActions \
  --access Allow \
  --direction Inbound \
  --source-address-prefixes ${ip}/32 \
  --destination-address-prefixes '*' \
  --protocol Tcp \
  --destination-port-ranges $6 \
  --priority 999
az logout
sleep 20
