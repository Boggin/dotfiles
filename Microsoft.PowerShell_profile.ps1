Import-Module "C:\Program Files (x86)\PowerShell Community Extensions\Pscx3\Pscx"
Invoke-BatchFile 'C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\vsvars32.bat'
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
    $m = 40
    $str = $pwd.ProviderPath
    if ($str.length -ge $m)
    {
        $str = "..." + $str.substring($str.length - $m)
    }
    Write-Host($str) -ForegroundColor Yellow -nonewline

    # posh-git example
    $realLASTEXITCODE = $LASTEXITCODE
    Write-VcsStatus
    $global:LASTEXITCODE = $realLASTEXITCODE
    Write-Host(" ")
    Write-Host("PS >") -ForegroundColor Gray -NoNewline
    " "
}
