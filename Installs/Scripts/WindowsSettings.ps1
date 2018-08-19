## Need to determine what kind of things we want here.

<#
Windows Update
    Change Settings
    Install Updates via PS    
#>

# Downloads PSWindowsUpdate module and imports it for this instance
# rather than installing it system-wide.
Save-Module -Name PSWindowsUpdate -Path .\Modules\PSWindowsUpdate
Import-Module -Name .\Modules\PSWindowsUpdate

# Installing Updates
Get-WUInstall -MicrosoftUpdate -NotCategory "Drivers" -IgnoreUserInput -Verbose -AcceptAll -IgnoreReboot
Write-Host "Windows Update complete!"
# Changing WU Settings

# Set to "Notify to Schedule Restart". Default DWord Value is 0.
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name UxOption -Type DWord -Value 1
Write-Host "Windows Update UXOption set to 1 [Notify to Schedule Restart]."

# Set Active Hours to 0900 > 0100 (Maybe allow for user input?). Default values are 8 and 17.
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name ActiveHoursStart -Type DWord -Value 9
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name ActiveHoursEnd -Type DWord -Value 1
Write-Host "Active Hours set from 9AM to 1AM."