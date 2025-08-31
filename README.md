# ICT519 — CVE-2023-23397 (Outlook Reminder Sound UNC → NTLM Hash Leak)

This repository contains a reproducible lab for **CVE-2023-23397**:
- Windows VM with classic Outlook (victim/sender)
- Linux VM (attacker) running Responder or Impacket
- PowerShell PoC to craft a meeting invite with a UNC reminder sound
- Mitigation via Outlook patch and/or Windows firewall egress blocks

For education in an isolated lab.

## Structure
```
ICT519-CVE23397/
├─ README.md
├─ LICENSE
├─ .gitignore
├─ lab/
│  ├─ Setup.md
│  ├─ Exploit_Steps.md
│  └─ Mitigation_Steps.md
├─ src/
│  └─ outlook_cve23397_exploit.ps1
├─ scripts/
│  ├─ attacker_responder.sh
│  ├─ attacker_impacket.sh
│  ├─ win_block_smb.ps1
│  └─ win_unblock_smb.ps1
├─ docs/
│  ├─ Report.md
│  ├─ Exploitation_Report.md
│  ├─ Work_Contribution_Summary.md
│  └─ img/ (your screenshots)
└─ PUSH_GUIDE.md
```
