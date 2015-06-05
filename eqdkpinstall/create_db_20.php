<?php

function import_eqdkp_db($var){

  $mysqlDatabaseName ="$dbname";
  $mysqlUserName ='hosttemplate';
  $mysqlPassword ='password';
  $mysqlHostName ='localhost';
  $mysqlImportFilename ='/var/www/vhosts/.domain.de/httpdocs/docroot/sqltmp/' . $var . '.sql';
		
  //=> import mysql-template and request ist
  $command='mysql -h' .$mysqlHostName .' -u' .$mysqlUserName .' -p' .$mysqlPassword .' ' .$mysqlDatabaseName .' < ' .$mysqlImportFilename;
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
