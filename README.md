tor-checker
===========

A little script that

 1. connects to the tor network and 
 2. checks all the URLs provided in the file *sites.txt* and
 3. send an email containing all URLs, that did not respond with the http status code 200.
 
The goal is to create a list of websites that block traffic routet via Tor proxies. The list allows to decide weather to use a website or not. The initial URL list was taken from: 

* https://trac.torproject.org/projects/tor/wiki/org/doc/ListOfServicesBlockingTor#ListOfServicesBlockingTor1

Configuration and Usage
-----------------------

 1. Make sure you have installed tor and the proxy port in tor-checker.sh is valid
 2. Make sure your system is configured to send emails using sendmail
 3. Create a file called ../mailaddresses.txt end enter the email address the script should send the generated report to.
 4. make th tor-checker.sh executable and run
