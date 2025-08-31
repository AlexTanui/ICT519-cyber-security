# Mitigation Steps

## Option A — Windows firewall (Admin PowerShell)
```powershell
New-NetFirewallRule -DisplayName "Block SMB Out 445" -Direction Outbound -Protocol TCP -RemotePort 445 -Action Block
New-NetFirewallRule -DisplayName "Block SMB Out 139" -Direction Outbound -Protocol TCP -RemotePort 139 -Action Block
```
Re-run the PoC; confirm no new capture.

To remove later:
```powershell
Get-NetFirewallRule -DisplayName "Block SMB Out*" | Remove-NetFirewallRule
```

## Option B — Patch Outlook
Install March 2023 (or later) Outlook security update. Re-test; confirm no capture.
