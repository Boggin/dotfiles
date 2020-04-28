Import-Module PSReadline
Import-Module posh-git
Import-Module oh-my-posh
Import-Module DockerCompletion
Import-Module z
Set-Theme tehrob

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
