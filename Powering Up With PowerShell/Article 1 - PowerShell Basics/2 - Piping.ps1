# List all processes on machine running the script
Get-Process 

# Get all processes starting with the Power
Get-Process | Where-Object {$_.ProcessName -like "Power*"}

# List all properties and methods available for the command Get-Process
Get-Process | Get-Member

# List the first 3 properties and methods available for the command Get-Process
Get-Process | Get-Member | Select-Object -First 3