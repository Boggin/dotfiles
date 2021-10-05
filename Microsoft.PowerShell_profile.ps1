Import-Module posh-git
Import-Module oh-my-posh
Import-Module z
Import-Module -Name Terminal-Icons
Set-PoshPrompt -Theme powerlevel10k_classic

# Function to relaunch as Admin:
  function Relaunch-Admin { Start-Process -Verb RunAs (Get-Process -Id $PID).Path }

# Alias for the function:
  Set-Alias psadmin Relaunch-Admin
