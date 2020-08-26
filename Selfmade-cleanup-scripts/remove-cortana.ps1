#   Description:
# This script removes Cortana for all users

Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
