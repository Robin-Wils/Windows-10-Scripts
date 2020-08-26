#   Description:
# This script installs openSSH and posh-git


# Install openssh client, this is easy for ssh and git
Add-WindowsCapability -Online -Name OpenSSH.Client*
Set-Service -Name ssh-agent -StartupType 'Automatic'
Start-Service ssh-agent

# Store your ssh keys here: C:\Users\<user>\.ssh

# Install posh-git
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force
install posh-git
Install-Module posh-git -Scope CurrentUser -Force
Import-Module posh-git
Add-PoshGitToProfile -AllHosts​​​​​​​
[Environment]::SetEnvironmentVariable("GIT_SSH", "$((Get-Command ssh).Source)", [System.EnvironmentVariableTarget]::User)
git config --global core.sshCommand "'C:\Windows\System32\OpenSSH\ssh.exe'"
