# free-ip
checks an IP address for network availability and DNS PTR record

Please edit the file _networks_ to add a list of networks and hosts.

Requirements:
bash
resolveip
nmap

execute ./free_ip.sh to get a list of free ip address _at that exact moment_ output into file "free_ip". The command also checks for a DNS record and outputs a random free IP address from your selected networks.

execute ./get_ip.sh _IP ADDRESS_ to check a specific IP address.
