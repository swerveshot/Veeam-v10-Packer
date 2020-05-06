$ProgressPreference = "SilentlyContinue"
$package = "E:\Backup\Shell.x64.msi"
$exe = "msiexec.exe"

$parameters = '/qn /i' + $package + 'ACCEPTEULA="yes" ACCEPT_THIRDPARTY_LICENSES="1"'

Write-Output "***** Installing Veeam Backup & Replication Console"
Start-Process $exe $parameters -Wait