# Remove startup appliations
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name *
Remove-Item ([Environment]::GetFolderPath('Startup') + '\*.*')

# Enable dark mode and small taskbar 
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarSmallIcons" -Value 1

# Bypass wallpaper restrictions
Remove-Item -Recurse -Force ($env:APPDATA + '\Microsoft\Windows\Themes\*') 
Invoke-WebRequest -Uri "https://www.smashingmagazine.com/files/wallpapers/mar-21/botanica/nocal/mar-21-botanica-nocal-1920x1440.jpg" -OutFile ($env:APPDATA + '\Microsoft\Windows\Themes\TranscodedWallpaper') 

# Restart desktop shell
Stop-Process -ProcessName explorer
