#!/bin/bash
   sudo -i
   yum install git httpd -y  
   systemctl start httpd
   systemctl enable httpd
   mkdir netflixD
   cd netflixD/
   git clone https://github.com/Bankole2000/netflix.git
   cd netflix/
   cp -r * /var/www/html/
   systemctl restart httpd