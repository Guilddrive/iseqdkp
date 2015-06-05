<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://www.guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function import_eqdkp_db($dbname, $dbuser, $dbpass){
	$dbhost = 'localhost';
	$mysqlImportFilename ='/var/www/vhosts/at.guilddrive.de/httpdocs/hostingV4/sqltmp/'.$dbname.'.sql';
	$command='mysql -h' .$dbhost .' -u' .$dbuser .' -p' .$dbpass .' ' .$dbname .' < ' .$mysqlImportFilename; //=>Importiert die Datenbank und gibt Request als ECHO aus
	$output=array();
	exec($command,$output,$worked);
		switch($worked){
		case 0:
			break;
		case 1:
			errormail("ERROR:EQDKP_INSTALLATION","create db 20<br>$dbname<br>$dbuser<br>$dbpass");
			break;
		}
}
?> 
