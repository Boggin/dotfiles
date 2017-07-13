$env:PSModulePath = "$env:PSModulePath;C:\Windows\system32\WindowsPowerShell\v1.0\Modules\;"
#Invoke-BatchFile "${env:VS140COMNTOOLS}\vsvars32.bat"
Import-Module Pscx
$Pscx:Preferences.TextEditor = "${env:ProgramFiles(x86)}\Notepad++\notepad++.exe"
if ($host.Name -eq 'ConsoleHost')
{
	Import-Module PSReadline
}
Set-Alias -Name ls -Value PowerLS -Option AllScope
#try { $null = gcm pshazz -ea stop; pshazz init } catch { }
# Import oh-my-posh and dependecies
Import-Module -Name posh-git -ErrorAction SilentlyContinue
Import-Module oh-my-posh
Import-Module posh-docker
Set-Theme Sorin

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
