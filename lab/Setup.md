# Lab Setup

## Topology
- Attacker (Linux): `192.168.56.10`
- Victim/Sender (Windows + Outlook): `192.168.56.20`
- Network: Host-only (e.g., 192.168.56.0/24)

## Steps
1. Create a host-only network in your hypervisor (VirtualBox/Parallels/UTM).
2. Add a host-only NIC to both VMs (same segment).
3. Assign static IPs:
   - Linux: `192.168.56.10/24`
   - Windows: `192.168.56.20/24`
4. Verify connectivity with `ping` both ways.

## Attacker prerequisites
- Option A: `sudo apt install responder`
- Option B: `pip install impacket`

## Windows prerequisites
- Classic Outlook for Windows (Microsoft 365 Apps / Office 2019/2021). Do not use the “New Outlook” Store app.
