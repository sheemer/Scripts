 

$OldWorkstation = Read-Host -Prompt 'Workstation to be disabled'

$OldWorkstation | Get-ADComputer | Disable-ADAccount

$OldWorkstation | Get-ADComputer | Move-ADObject -TargetPath "OU=,OU=,DC=,DC"

 

