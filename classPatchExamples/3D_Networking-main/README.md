external controll of 3js based environments from Max MSP
--------------------------------------------------------

The following examples include two projects including:
ANTIPHON which is live at the server https://antiph.onl and 
ETOILI withch is live at the server https://etoi.li

The overall architecture is:
1. local node server from the performance comupter running max with node.scrip
2. the romote server i.e. antiph.onl / etoi.li
3. and the live webpage running threejs with the embeded communication script

The whole process needs to be https to establish a secure connection with every connected client.

Currently running on digital ocean with ubuntu 20.04 with Nginx and certbot. Nginx config files included.

Authors for antiphon - Andrew Blanton, Sebastian Batali, Aditi Raja
Authors for etoili - Andrew Blanton, Gaurav Bhatnagar, Joey Laderer, Dylan Goetting