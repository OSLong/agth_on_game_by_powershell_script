
# Input process name for search
$Select = Read-Host "Input Process Name"

# List All Process
tasklist | Select-String $Select

# Process ID
$id = Read-Host  -Prompt "Input PID : "


Write-Host ""

# Excute agth As Admin
powershell -Command "Start-Process powershell  'agth /P$id /C /KF' -Verb RunAs"
