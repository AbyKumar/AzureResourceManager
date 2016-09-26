# Variables
$Uri = 'https://raw.githubusercontent.com/Azure/AzureStack-Tools/master/Deployment/'
$LocalPath = 'c:\AzureStack_TP2_SupportFiles'

# Create folder
New-Item $LocalPath -type directory

# Download files
Invoke-WebRequest ($uri + 'BootMenuNoKVM.ps1') -OutFile ($LocalPath + '\BootMenuNoKVM.ps1')
Invoke-WebRequest ($uri + 'PrepareBootFromVHD.ps1') -OutFile ($LocalPath + '\PrepareBootFromVHD.ps1')
Invoke-WebRequest ($uri + 'Unattend.xml') -OutFile ($LocalPath + '\Unattend.xml')
Invoke-WebRequest ($uri + 'unattend_NoKVM.xml') -OutFile ($LocalPath + '\unattend_NoKVM.xml')
