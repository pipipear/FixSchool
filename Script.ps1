# Remove startup appliations
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name *
Remove-Item ([Environment]::GetFolderPath('Startup') + '\*.*')

# Enable dark mode and small taskbar 
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarSmallIcons" -Value 1

# Bypass wallpaper restrictions
Remove-Item -Recurse -Force ($env:APPDATA + '\Microsoft\Windows\Themes\*') 
Invoke-WebRequest -Uri "https://i0.wp.com/4kwallpapers.com/images/wallpapers/windows-11-flow-dark-mode-dark-background-pink-3840x2160-5747.jpg" -OutFile ($env:APPDATA + '\Microsoft\Windows\Themes\TranscodedWallpaper') 

# Restart desktop shell
Stop-Process -ProcessName explorer
