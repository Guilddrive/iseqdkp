<?php
function create_eqdkp_config($var, $subdomain, $key){

$dbtype = 'mysqli';
$dbhost = 'localhost';
$dbuser = 'dbuser';
$dbname = "$var";
$dbpass = 'password'; //=>set mysql password
$table_prefix = "" . $var . "_";
	
$encryptionKey = md5(md5(md5($key)));
$dir = "/var/www/vhosts/domain.de/$subdomain";
	
$fp = @fopen("$dir/config.php","w");
  if (!$fp){
	  $header = "From: Error-Reporting <email@tld.de>\r\n";
	  $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
	  mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "create config $subdomain",$header);
	  exit;
  }

//=> structur          ftp-HOST                  ftp-PORT         ftp-USER         ftp-PASSWORD    ftp-USERNAME      ftp-USE 0    /1   database-TYPE	      mysql-HOST             database-NAME          database-USER          database-PASSWORD      database-PREFIX                          encryption-KEY                     define installe TRUE/FALSE
fputs ($fp, "<?php\n\n\$ftphost = '127.0.0.1';\n\$ftpport = 21;\n\$ftpuser = '';\n\$ftppass = '';\n\$ftproot = '';\n\$use_ftp = 0;\n\n\$dbtype = '$dbtype';\n\$dbhost = '$dbhost';\n\$dbname = '$dbname';\n\$dbuser = '$dbuser';\n\$dbpass = '$dbpass';\n\$table_prefix = '$table_prefix';\n\n\n\n\$encryptionKey = '$encryptionKey';\ndefine('EQDKP_INSTALLED', true);\n\n?>");
fclose($fp);
}
?>
