Write-Output "***** Deploying Veeam server"
Start-Process "packer" -ArgumentList "build -var-file=Veeam-server-vars.json Veeam-server.json" -Wait -NoNewWindow