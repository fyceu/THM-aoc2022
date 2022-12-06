# Day 5 - He knows when you're awake
*Category: Red Teaming*

*Tags: Brute-Forcing*

> Elf McSkidy asked Elf Recon McRed to search for any backdoor that the Bandit Yeti APT might have installed. If any such backdoor is found, we would learn that the bad guys might be using it to access systems on Santa’s network.k

## Objectives
-   Learn about common remote access services.
-   Recognize a listening VNC port in a port scan.
-   Use a tool to find the VNC server’s password.
-   Connect to the VNC server using a VNC client.

## Enumeration
![[Pasted image 20221205211951.png]]

![[Pasted image 20221205213853.png]]

![[Pasted image 20221205213950.png]]
## Questions
1. Use Hydra to find the VNC password of teh target with IP address `MACHINE_IP`. What is the password?
`1q2w3e4r`

2. Using the VNC client on teh AttackBox, connect to the target of the IP address `MACHINE_IP`. What is the flag wwritten on the target's screen?
`THM{I_SEE_YOUR_SCREEN}`