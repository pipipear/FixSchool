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
powershell $Shr = (New-Object -comObject WScript.Shell).CreateShortcut($Home + '\Desktop\FixSchool.lnk'); $Shr.TargetPath = 'cmd.exe'; $Shr.Arguments = '/c 
curl https://raw.githubusercontent.com/pipipear/FixSchool/main/Script.ps1 | powershell iex'; $Shr.IconLocation = 'C:\windows\System32\SHELL32.dll, 238'; $Shr.Save(); echo $Shr
echo :
echo :
echo :
echo ==================================
echo Running Pi's School Computer Fixer
echo ==================================
echo :
echo :
echo :
curl https://raw.githubusercontent.com/pipipear/FixSchool/main/Script.ps1 | powershell iex;
