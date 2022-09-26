
##NanoModul importieren
Import-Module c:\Nanoserver\NanoServerImageGenerator\NanoServerImageGenerator.psm1

##Neues Image für NanoServer erstellen 
New-NanoServerImage -DeploymentType Guest -Edition Datacenter -Mediapath D: -Basepath .\Base -Targetpath .\Nano1.vhdx -ComputerName Nano1 -Package Microsoft-NanoServer-Guest-Package -DomainName sample.local

New-NanoServerImage -DeploymentType Guest -Edition Standard -MediaPath D: -BasePath .\Base -TargetPath .\NanoX.vhdx -InterfaceNameOrIndex Ethernet -Ipv4Address 192.168.100.110 -Ipv4SubnetMask 255.255.255.0 -Ipv4Gateway 192.168.100.100 -Ipv4Dns 192.168.100.100

###DomainJoin
djoin.exe /provision /domain sample.local /machine nano /savefile c:\odjblob

##odjblob-Datei via Netuse oder Explorer auf den NanoServer kopieren

##PowershellSitzung auf den Nano aufbauen
Set-Item WSMan:\localhost\Client\TrustedHosts "192.168.100.110"
$ip = "192.168.100.110"
Enter-PSSession -ComputerName $ip -Credential $ip\Administrator

##odjblob-Datei einlesen - Neustart
djoin /requestodj /loadfile c:\odjblob /windowspath c:\windows /localos

shutdown /r /t 5 

Exit-PSSession 