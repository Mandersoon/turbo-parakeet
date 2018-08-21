# Downloads PSWindowsUpdate module and imports it for this instance
# rather than installing it system-wide.
Save-Module -Name PSWindowsUpdate -Path .\Modules\PSWindowsUpdate
Import-Module -Name .\Modules\PSWindowsUpdate

# Installing Updates
Get-WUInstall -MicrosoftUpdate -NotCategory "Drivers" -IgnoreUserInput -Verbose -AcceptAll -IgnoreReboot
Write-Host "Windows Update complete!"