 
Connect-VIServer -Server vcenter01 -User *

Connect-VIServer -Server vcenter01 -User *

$Server = Read-Host -Prompt 'Server to be be powered off and moved'

Get-VM -Name $Server

Move-VM -VM $Server -Destination Powered Off VM's