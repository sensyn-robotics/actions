#!/bin/bash -eu
az login --service-principal --username $1 --password $2 --tenant $3
az network nsg rule delete --resource-group $4 --nsg-name $5 --name AllowFromGitHubActions
az logout
