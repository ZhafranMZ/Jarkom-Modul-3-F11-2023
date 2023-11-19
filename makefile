HOST=gns3.local
PORT_Aura=5001
PORT_Revolte=5007
PORT_Richter=5009
PORT_Lawine=5011
PORT_Linie=5013
PORT_Lugner=5015
PORT_Eisen=5017
PORT_Denken=5019
PORT_Heiter=5021
PORT_Himmel=5023
PORT_Fern=5025
PORT_Flamme=5027
PORT_Frieren=5029
PORT_Stark=5031
PORT_Sein=5033
GIT_OWNER=ZhafranMZ
GIT_REPO=Jarkom-Modul-3-F11-2023
INSTALL={ echo "rm /root/*.sh";  echo "echo nameserver 192.168.122.1 > /etc/resolv.conf"; echo "echo 'apt-get update; apt-get install git -y; cd /root; rm -rf /root/$(GIT_REPO); git clone https://github.com/$(GIT_OWNER)/$(GIT_REPO).git; cp /root/$(GIT_REPO)/script/\$$(hostname)/* ./' > /root/install.sh"; echo "bash /root/install.sh; chmod +x /root/*.sh"; sleep 1; } | telnet gns3.local

test:
	curl https://codeload.github.com/$(GIT_OWNER)/$(GIT_REPO)/tar.gz/master | \ tar -xz --strip=2 $(GIT_REPO)-master/script/$(hostname)

all: Aura Heiter Himmel Lawine Linie Lugner Eisen Revolte Denken Fern Flamme Frieren

iptables:
	{ echo "iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.57.0.0/16"; sleep 1; } | telnet gns3.local $(PORT_Aura)

Aura: 
	$(INSTALL) $(PORT_Aura)

Revolte: iptables
	$(INSTALL) $(PORT_Revolte)

Richter: iptables
	$(INSTALL) $(PORT_Richter)

Lawine:iptables
	$(INSTALL) $(PORT_Lawine)

Linie: iptables
	$(INSTALL) $(PORT_Linie)

Lugner: iptables
	$(INSTALL) $(PORT_Lugner)

Eisen: iptables
	$(INSTALL) $(PORT_Eisen)

Denken: iptables
	$(INSTALL) $(PORT_Denken)

Heiter: iptables
	$(INSTALL) $(PORT_Heiter)

Himmel: iptables
	$(INSTALL) $(PORT_Himmel)

Fern: iptables
	$(INSTALL) $(PORT_Fern)

Flamme: iptables
	$(INSTALL) $(PORT_Flamme)

Frieren: iptables
	$(INSTALL) $(PORT_Frieren)

Stark: iptables
	$(INSTALL) $(PORT_Stark)

Sein: iptables
	$(INSTALL) $(PORT_Sein)

connect-Aura:
	telnet $(HOST) $(PORT_Aura)
	
connect-Revolte:
	telnet $(HOST) $(PORT_Revolte)
	
connect-Richter:
	telnet $(HOST) $(PORT_Richter)
	
connect-Lawine:
	telnet $(HOST) $(PORT_Lawine)
	
connect-Linie:
	telnet $(HOST) $(PORT_Linie)
	
connect-Lugner:
	telnet $(HOST) $(PORT_Lugner)
	
connect-Eisen:
	telnet $(HOST) $(PORT_Eisen)
	
connect-Denken:
	telnet $(HOST) $(PORT_Denken)
	
connect-Heiter:
	telnet $(HOST) $(PORT_Heiter)
	
connect-Himmel:
	telnet $(HOST) $(PORT_Himmel)
	
connect-Fern:
	telnet $(HOST) $(PORT_Fern)
	
connect-Flamme:
	telnet $(HOST) $(PORT_Flamme)
	
connect-Frieren:
	telnet $(HOST) $(PORT_Frieren)
	
connect-Stark:
	telnet $(HOST) $(PORT_Stark)
	
connect-Sein:
	telnet $(HOST) $(PORT_Sein)
	