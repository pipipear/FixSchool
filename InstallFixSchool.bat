@echo off 

cls 
echo : 
echo : 
echo : 
echo ===================================== 
echo Installing Pi's School Computer Fixer 
echo ===================================== 
echo : 
echo : 
echo : 
powershell [Net.ServicePointManager]::SecurityProtocol = 'tls12, tls11, tls'; iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JDvI3')) 
