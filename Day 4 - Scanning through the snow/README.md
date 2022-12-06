# Day 4 - Scanning through the snow
*Category: Red Teaming*

*Tags: Scanning*

> Can you help McRed scan the network and find the reason for the website compromise?

## Objectives
- What is Scanning?
- Scanning types
- Scanning techniques
- Scanning tools

## Enumeration

![[Pasted image 20221205180043.png]]

![[Pasted image 20221205183022.png]]

![[Pasted image 20221205183627.png]]

![[Pasted image 20221205183905.png]]

![[Pasted image 20221205183915.png]]
## Questions
1. What is the name of the HTTP server running on the remote host?
`Apache`

2. What is the name of the service running on port 22 on the QA server?
`ssh`

3. What flag can you find after successfully accessing the Samba service?
`{THM_SANTA_SMB_SERVER}`

4. What is the password of the username santahr?
`santa25`

## Solve Script

```bash
#!/usr/bin/env bash

smbget smb://10.10.22.19/admins/flag.txt -U ubuntu%S@nta2022
```