Write-Output "***** Stopping App server"
Start-Process "${Env:ProgramFiles(x86)}\VMware\VMware Workstation\vmrun" -ArgumentList "-T ws stop `"$env:USERPROFILE\Documents\Virtual Machines\Veeam-v10-Veeam-server\Veeam-v10-Veeam-server.vmx`" hard" -Wait -NoNewWindow

Write-Output "***** Removing App server"
Start-Process "${Env:ProgramFiles(x86)}\VMware\VMware Workstation\vmrun" -ArgumentList "-T ws deleteVM `"$env:USERPROFILE\Documents\Virtual Machines\Veeam-v10-Veeam-server\Veeam-v10-Veeam-server.vmx`"" -Wait -NoNewWindow