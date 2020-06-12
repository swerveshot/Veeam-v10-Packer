Write-Output "***** Deploying App server"
Start-Process "packer" -ArgumentList "build -timestamp-ui -var-file=App-server-vars.json App-server.json" -Wait -NoNewWindow