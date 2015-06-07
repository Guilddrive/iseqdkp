<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function create_eqdkp_config($path, $var, $subdomain, $key, $passwd){

$dbtype = 'mysqli';
$dbhost = 'localhost';
$dbuser = "$var";
$dbname = "$var";
$dbpass = "$passwd";
$table_prefix = "" . $var . "_";
	
$encryptionKey = md5(md5(md5($key)));
$dir = "$path$subdomain";
	
$fp = @fopen("$dir/config.php","w");
  if (!$fp){
	errormail("ERROR:EQDKP_INSTALLATION","create config $path; $var; $subdomain; $key; $passwd");
	exit;
  }

//=> structur          ftp-HOST                  ftp-PORT         ftp-USER         ftp-PASSWORD    ftp-USERNAME      ftp-USE 0    /1   database-TYPE	      mysql-HOST             database-NAME          database-USER          database-PASSWORD      database-PREFIX                          encryption-KEY                     define installe TRUE/FALSE
fputs ($fp, "<?php\n\n\$ftphost = '127.0.0.1';\n\$ftpport = 21;\n\$ftpuser = '';\n\$ftppass = '';\n\$ftproot = '';\n\$use_ftp = 0;\n\n\$dbtype = '$dbtype';\n\$dbhost = '$dbhost';\n\$dbname = '$dbname';\n\$dbuser = '$dbuser';\n\$dbpass = '$dbpass';\n\$table_prefix = '$table_prefix';\n\n\n\n\$encryptionKey = '$encryptionKey';\ndefine('EQDKP_INSTALLED', true);\n\n?>");
fclose($fp);
}
?>
