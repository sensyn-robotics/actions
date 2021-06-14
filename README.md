## Summary
* Temporarily open a port in Azure NSG with az cli

## Usage
* Describe as follows in steps of GitHub actions
```
- uses: sensyn-robotics/actions-azure-nsg-temp-door@main
  with:
    client-id: ${{ secrets.AZ_CLI_CLIENT_ID }}
    client-secret: ${{ secrets.AZ_CLI_CLIENT_SECRET }}
    tenant-id: ${{ secrets.AX_CLI_TENANT_ID }}
    resource-group-name: example-rg
    nsg-name: example-nsg
    port: 22
```
