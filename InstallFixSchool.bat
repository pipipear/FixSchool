@echo on
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
powershell $Shr = (New-Object -comObject WScript.Shell).CreateShortcut($Home + '\Desktop\FixSchool.lnk'); $Shr.TargetPath = 'cmd.exe'; $Shr.Arguments = "'powershell [Net.ServicePointManager]::SecurityProtocol = 'tls12, tls11, tls'; iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JDvI3'))'"; $Shr.IconLocation = 'C:\windows\System32\SHELL32.dll, 238'; $Shr.Save(); echo $Shr
echo :
echo :
echo :
echo ==================================
echo Running Pi's School Computer Fixer
echo ==================================
echo :
echo :
echo :
powershell [Net.ServicePointManager]::SecurityProtocol = 'tls12, tls11, tls'; iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JDvI3'))
