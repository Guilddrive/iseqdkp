<?php

function import_eqdkp_db($var){

	$dbhost = 'localhost';
	$dbuser = 'dbuser';
	$dbname = "$var";
	$dbpass = 'password';
	$dbimportfilename ='/var/www/vhosts/domain.de/httpdocs/docroot/sqltmp/' . $var . '.sql';
  
	//=> import mysql-template and request it
	$command='mysql -h' .$dbhost .' -u' .$dbuser .' -p' .$dbpass .' ' .$dbname .' < ' .$dbimportfilename;
	$output=array();
	exec($command,$output,$worked);
	switch($worked){
	case 0:
		break;
	case 1:
		$header = "From: Error-Reporting <email@tld.de>\r\n";
		$header .= "Content-Type: text/plain; Charset=utf-8\r\n";
		mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "import eqdkp db",$header);
	  	break;
	}
}

?> 
