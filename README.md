# interesno
Setup running 2 (two) virtual machines:
  - The first VM(web) used as a web server with Apache 2.4 and wordpress protected by authentication over Online LDAP Test Server.
  - The second VM(db) used as a database server with MySQL(MariaDB).

Requirements:
  - Vagrant
  - Ansible
  - Oracle VM VirtualBox
  
Execute ‘vagrant up’ command

Open in browser 
http://localhost:8181/

Admin's user **tesla** with password **password**