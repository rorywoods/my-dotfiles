# add to path for ssh-agent
$env:path += ";C:\Program Files (x86)\Git\bin"

# psget
Import-Module PsGet

# Load posh-git example profile
. 'C:\Users\Rory\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

#alias
set-alias npp "C:\Program Files (x86)\Notepad++\notepad++.exe"

#funcs
function New-PSSecureRemoteSession
{
  params($sshServerName, $Cred)
  $Session = New-PSSession $sshServerName -UseSSL - Credential $Cred -ConfigurationName C2Remote
  Enter-PSSession -Session $Session
}
set-alias ssh New-PSSecureRemoteSession 

#posh-git
$GitPromptSettings.WorkingForegroundColor = "Red"
$GitPromptSettings.UntrackedForegroundColor = "Red"