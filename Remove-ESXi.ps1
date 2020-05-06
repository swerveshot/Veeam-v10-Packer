Write-Output "***** Stopping nested ESXi server"
Start-Process "${Env:ProgramFiles(x86)}\VMware\VMware Workstation\vmrun" -ArgumentList "-T ws stop `"$env:USERPROFILE\Documents\Virtual Machines\Veeam-v10-ESXi\Veeam-v10-ESXi.vmx`" hard" -Wait -NoNewWindow

Write-Output "***** Removing nested ESXi server"
Start-Process "${Env:ProgramFiles(x86)}\VMware\VMware Workstation\vmrun" -ArgumentList "-T ws deleteVM `"$env:USERPROFILE\Documents\Virtual Machines\Veeam-v10-ESXi\Veeam-v10-ESXi.vmx`"" -Wait -NoNewWindow