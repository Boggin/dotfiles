Import-Module Pscx
Import-VisualStudioVars 140 -Architecture x86
$Pscx:Preferences.TextEditor = 'notepad2.exe'
if ($host.Name -eq 'ConsoleHost')
{
	Import-Module PSReadline
}
Import-Module posh-git
# Set up a simple prompt, adding the git prompt parts inside git repos
function global:prompt {
    Write-Host($env:USERNAME + " ") -ForegroundColor Green -nonewline
    Write-Host($env:COMPUTERNAME + " ") -ForegroundColor Magenta -nonewline
    # limit length of prompt
    $m = 30
    $str = $pwd.ProviderPath
    if ($str.length -ge $m)
    {
        $str = "..." + $str.substring($str.length - $m)
    }
    Write-Host($str) -ForegroundColor Yellow -nonewline
    # posh-git
    $realLASTEXITCODE = $LASTEXITCODE
    Write-VcsStatus
    $global:LASTEXITCODE = $realLASTEXITCODE
    Write-Host("")
    Write-Host("PS >") -ForegroundColor Gray -NoNewline
    " "
}
