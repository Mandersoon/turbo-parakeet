## Need to determine what kind of things we want here.

<#
Windows Update
    Change Settings  
#>

## Windows Update settings
# Set to "Notify to Schedule Restart". Default DWord Value is 0.
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name UxOption -Type DWord -Value 1
Write-Host "Windows Update UXOption set to 1 [Notify to Schedule Restart]."

# Set Active Hours to 0900 > 0100 (Maybe allow for user input?). Default values are 8 and 17.
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name ActiveHoursStart -Type DWord -Value 9
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name ActiveHoursEnd -Type DWord -Value 1
Write-Host "Active Hours set from 9AM to 1AM."
## End Windows Update settings

## Folder Options
# Set default Explorer view to "This PC"

# Show hidden files
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Hidden -Type DWord -Value 1
Write-Host "Enabled 'Show hidden files, folders and drives'."

# Disable hide extensions for known file types
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -Type DWord -Value 0
Write-Host "Disabled 'Hide extensions for known file types'."
## End Folder Options

## Taskbar settings


## End Taskbar settings