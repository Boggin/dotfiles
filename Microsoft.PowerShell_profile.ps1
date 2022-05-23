Import-Module posh-git
Import-Module oh-my-posh
Import-Module z
Import-Module -Name Terminal-Icons
Set-PoshPrompt -Theme powerlevel10k_classic

# Function to relaunch as Admin:
function Relaunch-Admin { Start-Process -Verb RunAs (Get-Process -Id $PID).Path }

# Alias for the function:
Set-Alias psadmin Relaunch-Admin

# Fix colours in Solarized PSReadLine
Set-PSReadLineOption -Colors @{
   "Number"   = "#f275be";
   "Member"   = "#f275be";
   "Type"     = "#f275be";
   "Variable" = "#f275be";
   "String"   = "#41c7b9";
   "Operator" = "#75b938";
}
