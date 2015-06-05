<?php

function create_eqdkp_config($var, $subdomain, $key){

$dbtype = 'mysqli';
$dbhost = 'localhost';
$dbuser = 'hosttemplate';
$dbname = "$var";
$dbpass = 'password'; //=>set mysql password
$table_prefix = "" . $dkpname . "_";
	
$encryptionKey = md5(md5(md5($key)));
$dir = "/var/www/vhosts/.domain.de/$subdomain";
	
$fp = @fopen("$dir/config.php","w");
  if (!$fp){
  errormail("ERROR:EQDKP_INSTALLATION","create_config.php");
  exit;}

//=>structur          FTP-HOST                  FTP-PORT         FTP-USER         FTP-PASSWORD    FTP-USERNAME      FTP-USE 0    /1   DATABASE-TYPE	      MySQL-HOST             DATABASE-NAME          DATABASE-USER          DATABASE-PASSWORD      DATABASE-PREFIX                          ENCRYPTION-KEY                     DEFINE INSTALLED TRUE/FALSE
fputs ($fp, "<?php\n\n\$ftphost = '127.0.0.1';\n\$ftpport = 21;\n\$ftpuser = '';\n\$ftppass = '';\n\$ftproot = '';\n\$use_ftp = 0;\n\n\$dbtype = '$dbtype';\n\$dbhost = '$dbhost';\n\$dbname = '$dbname';\n\$dbuser = '$dbuser';\n\$dbpass = '$dbpass';\n\$table_prefix = '$table_prefix';\n\n\n\n\$encryptionKey = '$encryptionKey';\ndefine('EQDKP_INSTALLED', true);\n\n?>");
fclose($fp);
}

?>
