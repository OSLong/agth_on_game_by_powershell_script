$Select = Read-Host "Input Process Name"

tasklist | Select-String $Select

$id = Read-Host  -Prompt "Input PID : "


Write-Host 
agth /P$id /C
