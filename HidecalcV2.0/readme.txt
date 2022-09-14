Hidecalc Version 2.0 by Sean Hegarty 26/02/2011
--------------------------------------
sean.hegarty@hidecalc.co.uk

Okay it has been 10 years since I updated this application, but hopefully this should keep people happy :)


What is Hidecalc?
-----------------
Hidecalc is a program I knocked up to make it easier to set the registry up for hiding drives within Windows. This is usefull if you need to lock down a machine to stop users from doing damage where they shouldn't be or saving data where they shouldn't be.

It is ideal for hiding drives in Terminal Server/Citrix.

Running hidecalc will not alter anything in your Registry. It is the data files it creates
that will make changes when executed.

Okay, so what do I do?
----------------------


1.) Just run the hidecalc.exe icon.
2.) Click on the drives listed you want to hide from your users.
4.) Click on one of the Five buttons to Create the data file you want.

The Five data types it creates are:

1.) Reg Hack File - hidedrives.reg - hideundo.reg
---------------------------------------------

This file is nice and simple and ideal for peer to peer networks where login scripts 
or where policies can not be ran.
Just double click on the hidedrives.reg file that gets created by hidecalc and away you go.
You may have to logout as that user and back in to see the changes.

2.) Policy Editor ADM File - hidedrives.adm
---------------------------------------

This file can be loaded as an ADM template into poledit.exe and can compliment ADM files you already use.
It will create a entry called hidecalc and under here you can just tick the box to implement 
your drive lock down.
This can be also used on Windows 2000/2003/2008 within Group Policy Manager.

3.) Kix32 login script - hidedrives.scr
-----------------------------------

The third file is for KIX32. Just edit your existing login script and cut and paste from
the HideDrives.scr created by hidecalc


4.) Power Shell login script - hidedrives.scr
-----------------------------------

The fourth file is for PowerShell. Just edit your existing PowerShell script and cut and paste from
the HideDrives.scr created by hidecalc

5.) Server 2008 ADMX/ADML File - hidedrives.adm
---------------------------------------

This creates two files:

HideDrives.ADMX
HideDrives.ADML

These can be copied to your workstation/server.

The ADMX file will go in C:\Windows\PolicyDefinitions on a workstation for the PolicyDefinitions folder on your Domain Controller.
And the ADML will go in the Language folder, depending on what Language your machine is configured for e.g C:\Windows\PolicyDefinitions\<language>

Now when you launch either GPedit.msc on your workstation or Group Policy Manager on your Domain Controller, the HideCacl policy should automatically appear.


And thats about it.

Just remember to edit the policies and enable them !


Please Check http://www.hidecalc.co.uk for more details.


Note from Author
----------------

Right here we go with the other shit!

I am no great programmer and knocked this up with a simple software editor, so if you find
any bugs then please report then to me at sean.hegarty@hidecalc.co.uk

I am not responsible if you use this program and lock up half your companies machines or
Domain!. You use this program at your own risk.
I have tested it here on my local Domain with windows 95,98,NT,2000,XP,Vista and Windows 7 machines with no problems. 
Know abit about the registry before you start playing.

Any feedback good or bad welcome to:

sean.hegarty@hidecalc.co.uk
http://www.hidecalc.co.uk
