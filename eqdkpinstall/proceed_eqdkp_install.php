<?php session_start();
	
//=> AES-encryption
require('./eqdkp_aes_class.php');
	
//=> declare vars
$var = $_SESSION["..."]; //=> subdomain name without '.domain.de'
$subdomain = "$var.domain.de";
$key = $_SESSION["..."]; //=> set var for security key
$mail = $_SESSION["..."]; //=> set var for email
$passwd = $_SESSION["..."]; //=> set var for password
$aminuser = $_SESSION["..."]; //=> set var for admin

//=> include functions
require ('./set_permissions.php'); //=> set file permissions
require ('./clear_doc_root.php'); //=> clear doc-root
require ('./extract_template_20.php'); //=> Unzip Data - Important! The eqdkp_template.zip mustn't contain the "config.php and localconf.php". The folder "data/md5(mysql_prefix+databasename)/" must be renamed into "dkphash".
require ('./create_config.php'); //=> creating config.php
require ('./copy_and_rename_20.php'); //=> adjust .SQL-Dumps - searching and adjusing prefixes of the mysql-tables
require ('./create_db_20.php');	//=> importing mysql template
require ('./copy_and_rename_localconf.php'); //=> adjusting localconf.php - for searching and adjusting mysql-prefix - will be copyied to "data/md5(mysql_prefix+datebasename)/eqdkp/config"
require ('./hash_and_rename.php'); //=> creating hash with mysql_prefix and databasename and adjusts the folder data/dkphash

//=> run functions
set_permission_0777("/var/www/vhosts/domain.de/$subdomain"); //=> run
clear_doc_root($subdomain); //=> run
extract_eqdkp_template($subdomain); //=> run
create_eqdkp_config($var, $subdomain, $key); //=> run
copy_and_rename($var); //=> run
set_permission_0644("/var/www/vhosts/domain.de/$subdomain/config.php"); //=> run
set_permission_0777("/var/www/vhosts/domain.de/$subdomain/data"); //=> run
import_eqdkp_db($var); //=> run
clear_doc_root($subdomain); //=> run
copy_and_rename_localconf($var); //=> run
hash_and_rename($var); //=> run

//=> encrypt email with AES
$encryptionKey = md5(md5(md5($key)));
$sqlmail = AesCtr::encrypt($mail, md5($encryptionKey), 256);

//encrypt mysql password
$sqlpass = md5($passwd);

//=> mysql data
$dbtype = 'mysqli';
$dbhost = 'localhost';
$dbuser = 'dbuser';
$dbname = "mysql-username";
$dbpass = 'mysql-passwd';

//=> mysql connect
$con = mysqli_connect($dbhost, $dbuser, $dbpass);
mysqli_select_db($con, $dbname);

//=> declare mysql-request for table _users
$sql = "insert " . $var . "_users (user_id, username, user_password, user_lang, user_email, user_active, rules, user_style) values ('1', '" . $aminuser . "', '" . $sqlpass . "', 'german', '" . $sqlmail . "', '1', '0', '1')"; //=> set var adminuser

//=> run mysql-request for table _users
mysqli_query($con, $sql);

//=> declare mysql-request for table _group_users
$sql = "insert " . $var . "_groups_users" . "(group_id, user_id) VALUES (2,1)";

//=> run mysql-request for talbe _group_users
mysqli_query($con, $sql);

//=> verify mysql-request
$num = mysqli_affected_rows($con);
if ($num>0){
  mysqli_close($con);
  echo trim("<img width=\"11\" height=\"11\" src=\"../images/ok.png\" />");
}else{
  mysqli_close($con);
  exit("<img width=\"11\" height=\"11\" src=\"../images/no.png\" />");
}

?>
