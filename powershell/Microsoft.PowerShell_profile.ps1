# drop this file in location: C:\Users\boby\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
# cheap way to enable this file to be executable from pwershell (requires elevated priviliges):
# > Set-ExecutionPolicy RemoteSigned


# changes the default prompt to shorten home directory to `~`:
function prompt { "$((''+$PWD).replace($HOME, '~')) >> " }
