@echo off
PowerShell -Command "Get-NetAdapter | Where-Object {$_.Status -eq 'Up'} | ForEach-Object {Set-DnsClientServerAddress -InterfaceIndex $_.ifIndex -ServerAddresses '114.114.114.114'}"
echo ok.
pause