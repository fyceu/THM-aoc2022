# Day 3 - Nothing escapes detective McRed
> Help Elf Recon McRed with gathering open-source information against the website

## Objectives
-   What is OSINT, and what techniques can extract useful information against a website or target?
-   Using dorks to find specific information on the Google search engine
-   Extracting hidden directories through the Robots.txt file
-   Domain owner information through WHOIS lookup
-   Searching data from hacked databases
-   Acquiring sensitive information from publicly available GitHub repositories
---
In this task, we get to use OSINT to find information about the stolen files from the santagift.shop site.

We can utilize the [WHOIS](who.is) database to find the registrar information about [santagift.shop](santagift.shop)

![Pasted image 20221203182940](https://user-images.githubusercontent.com/65686765/205475651-a176ff62-a828-4ff1-889a-0e4ed61b680f.png)

### 1. What is the name of the Registrar for the domain santagift.shop?
Answer

```NAMECHEAP INC```
<br>

On the READE.md, it says that credentials are stored in the ```
config.php``` file.
![Pasted image 20221203183221](https://user-images.githubusercontent.com/65686765/205475690-cc93236a-e1a6-4b6e-a484-8f98266eddfc.png)
![Pasted image 20221203183354](https://user-images.githubusercontent.com/65686765/205476080-5e29d54c-64e0-4c40-be65-ac8c265c43c6.png)

### 2. Find the website's source code (repository) on github.com and open the file containing sensitive credentials. Can you find the flag? 
Answer

```{THM_OSINT_WORKS}```
<br>
### 3. What is the name of the file containing passwords?
Answer:
```config.php```
<br>

Perusing through the code, we are able to find a lot of the sensitive information regarding the site. 
![Pasted image 20221203183446](https://user-images.githubusercontent.com/65686765/205475729-64dc0c8a-1d52-4fc7-92b1-8137508124f1.png)

### 4. What is the name of the QA server associated with the website?
Answer:

```qa.santagift.shop```

### 5. What is the DB_PASSWORD that is being reused between the QA and PROD environments? 
Answer:

```S@nta2022```

## Making a solve script
---
We know that the flag is written inside the ```conf.php``` file. 
Therefore, we can download it with ```wget``` and then use ```grep``` to snag the flag out from the file.

*We need to make sure that we download the raw format of the file.*
```bash
#!/bin/bash

wget https://raw.githubusercontent.com/muhammadthm/SantaGiftShop/main/config.php

grep -oE -m 1 "\{THM.*\}" config.php | cat >> flag.txt
```