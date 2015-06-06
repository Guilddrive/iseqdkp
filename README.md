# iseqdkp
EQdkp Plus 2.0 Installscript for our Free Hosting Service on https://guilddrive.de

Da wir dir auf https://guilddrive.de ein kostenloses EQdkp Plus 2.0 Hosting zur Verfügung stellen, sind wir aufgrund der GNU AFFERO GENERAL PUBLIC LICENSE, Version 3 (AGPL-3.0) verpflichtet unseren Quellcode des Installationsscriptes preis zu geben, was wir hiermit gerne tun.

Bevor du das Script nutzen kannst um EQdkp Plus 2.0 zu installieren, muss im Vorfeld natürlich für den jeweiligen User eine Subdomain, eine MySQL-Datenbank und ein neuer MySQL-Nutzer angelegt werden. Wie du dazu vorgehst kommt ganz darauf an, welches System du nutzt um deinen Server zu administrieren. Wir arbeiten mit der API-Schnittstelle von Plesk 12. Eine umfassende Anleitung dazu findest du unter "http://download1.parallels.com/Plesk/Doc/de-DE/online/plesk-api-rpc/"

Bitte beachte, dass die enthaltenen Dateipfade und Variablen der einzelnen Scripte im Vorfeld an deine Ordnerstruktur und Formulare angepasst werden müssen. Um diese Pfade und Variablen für dich erkennbarer zu machen, haben wir in den Scripten allgemeine Begriffe, wie beispielsweise 'var/www/vhost/domain.de/' oder '$_SESSION["var"]' genutzt, dass sollte dir das Arbeiten erleichtern.

Kopiere den Ordner 'eqdkpinstall/' nach 'var/www/vhosts/domain.de/httpdocs/' und die Dateien 'hosttemplate20.sql' und 'localconfig.gd' nach 'var/www/vhosts/domain.de/'. Zu allerletzt musst du noch ein .zip-Archiv namens 'eqdkp_template20.zip' erstellen und es in den gleichen Pfad, wie auch die 'hosttemplate20.sql' kopieren. 

Um eine funktionsfähige 'eqdkp_template20.zip' zu erstellen, lade dir EQdkp Plus in der aktuellsten Version von der Entwicklerseite herunter und entpacke alle Archive (auch das zip-Archiv im zip-Archiv). Kopiere nun den Ordner 'dkphash' in das Verzeichnis 'data/' und lösche den Ordner 'install/'. Erstelle nun aus allen verbleibenden Ordnern und Dateien das Archiv 'eqdkp_template20.zip' und kopiere es in den o. g. Pfad. Das Installationsprogramm ist nun fertig eingerichtet.

Um EQdkp Plus 2.0 nun vom System installieren zu lassen muss du nichts weiter tun als die erforderlichen Daten an das Script 'eqdkpinstall/proceed_eqdkp_install.php' zu senden. Alle weiteren Details findest du in den Scripten.




