New-NetFirewallRule -DisplayName "Block SMB Out 445" -Direction Outbound -Protocol TCP -RemotePort 445 -Action Block
New-NetFirewallRule -DisplayName "Block SMB Out 139" -Direction Outbound -Protocol TCP -RemotePort 139 -Action Block
