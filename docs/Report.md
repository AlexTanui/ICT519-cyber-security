# Vulnerability Description Report — CVE-2023-23397

**Students:** Narhan Kiprop (SID: ________), Partner Name (SID: ________)  
**Date:** 31 August 2025

## 1. Introduction
CVE-2023-23397 is a critical Outlook for Windows vulnerability where a crafted meeting item referencing a UNC reminder sound triggers automatic SMB authentication, leaking Net‑NTLMv2 credentials with zero user interaction.

## 2. Technical Explanation
- Root cause: Outlook processes `ReminderSoundFile` pointing to `\\host\share\file.wav` and attempts retrieval.
- Impact: Credential theft leading to lateral movement/privilege escalation.
- Outcome: Net‑NTLMv2 hash captured by attacker running Responder/SMB server.

**[Insert Screenshot]** `docs/img/responder_before.png` (listener before send)  
**[Insert Screenshot]** `docs/img/responder_capture.png` (hash captured)

## 3. Mitigation
- Apply the March 2023 Outlook patches (or later).
- Block outbound SMB (TCP 445/139) from clients.

**[Insert Screenshot]** firewall rule created (`win_block_smb.ps1`).

## 4. Demonstration Plan
- Two VMs on host‑only network: Linux attacker (192.168.56.10), Windows victim (192.168.56.20).
- Start Responder; run PoC; capture hash; apply mitigation; re‑test.
