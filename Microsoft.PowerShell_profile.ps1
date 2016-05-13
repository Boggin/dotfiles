Import-Module Pscx
Invoke-BatchFile "${env:VS140COMNTOOLS}\vsvars32.bat"
$Pscx:Preferences.TextEditor = "${env:ProgramFiles(x86)}\Notepad++\notepad++.exe"
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
    $m = 47
    $str = $pwd.ProviderPath
    if ($str.length -ge $m)
    {
        $str = "..." + $str.substring($str.length - $m)
    }
    Write-Host($str) -ForegroundColor Yellow
    Write-Host("PS") -ForegroundColor Gray -NoNewline
    # posh-git
    $realLASTEXITCODE = $LASTEXITCODE
    Write-VcsStatus
    $global:LASTEXITCODE = $realLASTEXITCODE
    Write-Host(" >") -ForegroundColor Gray -NoNewline
    " "
}
