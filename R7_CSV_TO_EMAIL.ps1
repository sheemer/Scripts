$path = Read-Host -Prompt "File you want to send emails based on"

$file = Get-Content -Path $path

$dir = pwd

$file | Foreach {$_ -replace "*", ""} | Foreach {$_ -replace "*", ""} | Foreach {$_ -replace "*", ""} | Foreach {$_ -replace "1", ""} | Foreach {$_ -replace "2", ""} | Foreach {$_ -replace "3", ""} | Foreach {$_ -replace "4", ""} | Set-Content "$content\user.csv"

$filedone = import-csv -Path "$content\user.csv"

$credential = Get-Credential

$sender = Read-Host -Prompt " Eamil to send from"

foreach ($filedone in $filedone){

    $email = $filedone.name | foreach {$_ + "*"}

    $proof =  $filedone.Proof

    Send-MailMessage -from $sender -To $email -Subject 1 -body "Please let me know if recived" -SmtpServer ** -Credential $credential -Port 587 -UseSsl
}