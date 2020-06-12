Write-Output "***** Deploying Veeam server"
Start-Process "packer" -ArgumentList "build -timestamp-ui -var-file=Veeam-server-vars.json Veeam-server.json" -Wait -NoNewWindow