<?php
//#####################################*
//» Script by Daniel@www.guilddrive.de
//» http://www.guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function import_eqdkp_db($path, $dbname, $dbuser, $dbpass){
	$dbhost = 'localhost';
	$mysqlImportFilename = $path. "httpdocs/eqdkpinstall/sqltmp/" . $dbname . ".sql";
	$command="mysql -h" . $dbhost . " -u" . $dbuser . " -p" . $dbpass . " " . $dbname . " < " . $mysqlImportFilename;
	$output=array();
	exec($command,$output,$worked);
		switch($worked){
		case 0:
			break;
		case 1:
			errormail("ERROR:EQDKP_INSTALLATION","create db 20 $mysqlImportFilename");
			break;
		}
}
?> 
