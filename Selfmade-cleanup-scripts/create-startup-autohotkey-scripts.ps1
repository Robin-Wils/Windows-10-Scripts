#   Description:
# This script copies the autohotkey scripts to your startup folder.

Copy-Item -Recurse startup-autohotkey-scripts\* "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
