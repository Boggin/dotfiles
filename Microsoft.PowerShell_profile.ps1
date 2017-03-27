Import-Module Pscx
Invoke-BatchFile "${env:VS140COMNTOOLS}\vsvars32.bat"
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
