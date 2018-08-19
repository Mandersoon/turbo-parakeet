## Written by Michael Anderson [michael@manderson.tech] ##

## This script will execute a number of other scripts, grouped into
## application installs, Windows settings, and application settings.

## Prep work

## Allows this and child scripts to run unrestricted.
Set-ExecutionPolicy Unrestricted -Scope Process

## Installs updated package providers for later tasks (otherwise it prompts to update)
Install-PackageProvider Nuget -Force
Install-Module -Name PowerShellGet -Force

## Invoke-Expression $ScriptPath\Scripts\ApplicationInstall.ps1
Invoke-Expression .\Scripts\WindowsSettings.ps1
## Invoke-Expression $ScriptPath\Scripts\ApplicationSettings.ps1
## lets try this again
