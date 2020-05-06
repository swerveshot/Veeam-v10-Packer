Write-Output "***** Deploying nested ESXi server"
Start-Process "${Env:ProgramFiles}\VMware\VMware OVF Tool\ovftool.exe" -ArgumentList "--name=Veeam-v10-ESXi --net:`"VM Network=NAT`" --acceptAllEulas --allowAllExtraConfig `"$env:USERPROFILE\Downloads\Nested_ESXi6.7u3_Appliance_Template_v1.ova`" `"$env:USERPROFILE\Documents\Virtual Machines`"" -Wait -NoNewWindow
# Start-Process "${Env:ProgramFiles(x86)}\VMware\VMware OVF Tool\ovftool.exe" -ArgumentList '--name=Veeam-v10-ESXi --net:"VM Network=NAT" --acceptAllEulas --allowAllExtraConfig "https://download3.vmware.com/software/vmw-tools/nested-esxi/Nested_ESXi6.7u3_Appliance_Template_v1.ova" "$env:USERPROFILE\Documents\Virtual Machines"' -Wait -NoNewWindow

Write-Output "***** Guest customization nested ESXi server"
Add-Content "$env:USERPROFILE\Documents\Virtual Machines\Veeam-v10-ESXi\Veeam-v10-ESXi.vmx" "guestinfo.createvmfs = `"True`""

Write-Output "***** Starting nested ESXi server"
Start-Process "${Env:ProgramFiles(x86)}\VMware\VMware Workstation\vmrun" -ArgumentList "-T ws start `"$env:USERPROFILE\Documents\Virtual Machines\Veeam-v10-ESXi\Veeam-v10-ESXi.vmx`"" -Wait -NoNewWindow