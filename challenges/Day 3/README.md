# Day 3 - Nothing escapes detective McRed
---
> Help Elf Recon McRed with gathering open-source information against the website


In this task, we get to use OSINT to find information about the stolen files from the santagift.shop site.
<br>
We can utilize [who.is](who.is) site to find the registrar information about satagift.shop
![[Pasted image 20221203182940.png]]
### What is the name of the Registrar for the domain santagift.shop?
NAMECHEAP INC

On the READE.md, it says that credentials are stored in the ```
config.php``` file.
![[Pasted image 20221203183221.png]]
![[Pasted image 20221203183354.png]]
### Find the website's source code (repository) on github.com and open the file containing sensitive credentials. Can you find the flag? 
{THM_OSINT_WORKS}

### What is the name of the file containing passwords?
config.php

Perusing through the code, we are able to find a lot of the sensitive information regarding the site. 
![[Pasted image 20221203183446.png]]
### What is the name of the QA server associated with the website?
qa.santagift.shop

### What is the DB_PASSWORD that is being reused between the QA and PROD environments? 
S@nta2022

## Making a solve script
---
We know that the flag is written inside the ```conf.php``` file. Therefore, we can download it with ```wget``` and use ```grep``` to snag the flag out from it. 
*We need to make sure that we download the raw format of the file.*
```
#!/bin/bash

wget https://raw.githubusercontent.com/muhammadthm/SantaGiftShop/main/config.php

grep -oE -m 1 "\{THM.*\}" config.php | cat >> flag.txt
```