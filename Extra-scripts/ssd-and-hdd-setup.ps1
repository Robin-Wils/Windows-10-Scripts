#   Description:
# This script symlinks some files from the SSD to HDD.

$SSD = "C:"
$HDD = "E:"
$user = (Get-Item $env:USERPROFILE).Name

# Disable restore points on SSD drive
disable-computerrestore -drive $SSD

# Create symlinks
cmd /c mklink "$SSD\Users\$user\3D Objects" "$HDD\Users\$user\3D Objects"
cmd /c mklink "$SSD\Users\$user\Contacts" "$HDD\Users\$user\Contacts"
cmd /c mklink "$SSD\Users\$user\Desktop" "$HDD\Users\$user\Desktop"
cmd /c mklink "$SSD\Users\$user\Documents" "$HDD\Users\$user\Documents"
cmd /c mklink "$SSD\Users\$user\Downloads" "$HDD\Users\$user\Downloads"
cmd /c mklink "$SSD\Users\$user\Favourites" "$HDD\Users\$user\Favourites"
cmd /c mklink "$SSD\Users\$user\Links" "$HDD\Users\$user\Links"
cmd /c mklink "$SSD\Users\$user\Music" "$HDD\Users\$user\Music"
cmd /c mklink "$SSD\Users\$user\Pictures" "$HDD\Users\$user\Pictures"
cmd /c mklink "$SSD\Users\$user\Saved Games" "$HDD\Users\$user\Saved Games"
cmd /c mklink "$SSD\Users\$user\Videos" "$HDD\Users\$user\Videos"

If (Test-Path "$HDD\Users\$user\Nextcloud" -PathType Container) {
    cmd /c mklink "$SSD\Users\$user\Nextcloud" "$HDD\Users\$user\Nextcloud"
}
