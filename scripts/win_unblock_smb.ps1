Get-NetFirewallRule -DisplayName "Block SMB Out 445" -ErrorAction SilentlyContinue | Remove-NetFirewallRule
Get-NetFirewallRule -DisplayName "Block SMB Out 139" -ErrorAction SilentlyContinue | Remove-NetFirewallRule
