# free-ip
checks an IP address for network availability and DNS PTR record

Please edit the file networks to add a list of networks and hosts.

Requirements:
bash
resolveip
nmap

execute ./free_ip.sh to get a list of free ip address _at that exact moment_ in file free_ip. The command also checks for a DNS record and outputs it accordingly.
