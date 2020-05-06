$ProgressPreference = "SilentlyContinue"
$package = "E:\Backup\Server.x64.msi"
$exe = "msiexec.exe"

$parameters = '/qn', '/i', $package, 'ACCEPTEULA="yes"', 'ACCEPT_THIRDPARTY_LICENSES="1"', 'VBR_LICENSE_FILE="A:\Veeam-20instances-suite-nfr.lic"'

Write-Output "***** Installing Veeam Backup & Replication Server"
Start-Process $exe $parameters -Wait