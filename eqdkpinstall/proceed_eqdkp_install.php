<?php 
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

session_start();
	
//=> AES-encryption
require('./eqdkp_aes_class.php');

//=> include ERROR-REPORTING-MAIL
require('./error_mail_inc.php');
	
//=> declare vars
$var = $_SESSION["..."]; //=> !-->important: this must be the name of the database, database-user, mysql_prefix and subdomain without tld<--!
$subdomain = "$var.domain.de";
$path = '/var/www/vhosts/domain.de/'; //=> set var for docroot
$key = $_SESSION["..."]; //=> set var for security key of eqdkp
$mail = $_SESSION["..."]; //=> set var for user-email
$aminuser = $_SESSION["..."]; //=> set var for eqdkp admin-login
$passwd = $_SESSION["..."]; //=> set var for eqdkp admin-password
$md5passwd = md5($passwd); //=> hash the password for mysql request and use it also for the database-user !-->important: you must also create the database-user with this md5 password<--!


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
set_permission_0777("$path$subdomain"); //=> run
clear_doc_root($path, $subdomain, 'file1.dat'); //=> run
clear_doc_root($path, $subdomain, 'file2.dat'); //=> run
extract_eqdkp_template($path, $subdomain); //=> run
create_eqdkp_config($path, $var, $subdomain, $key, $md5passwd); //=> run
copy_and_rename($path, $var); //=> run
set_permission_0644("$path$subdomain/config.php"); //=> run
set_permission_0777("$path$subdomain/data"); //=> run
import_eqdkp_db($path, $var, $var, $md5passwd); //=> run
clear_doc_root($subdomain); //=> run
copy_and_rename_localconf($path, $var, $subdomain); //=> run
hash_and_rename($var); //=> run

//=> encrypt email with AES
$encryptionKey = md5(md5(md5($key)));
$sqlmail = AesCtr::encrypt($mail, md5($encryptionKey), 256);

//=> mysql data
$dbtype = 'mysqli';
$dbhost = 'localhost';
$dbuser = $var;
$dbname = $var;
$dbpass = $md5passwd;

//=> mysql connect
$con = mysqli_connect($dbhost, $dbuser, $dbpass);
mysqli_select_db($con, $dbname);

//=> escape $adminuser for mysql-request
$sqladmin = mysqli_real_escape_string($con, $adminuser);

//=> declare mysql-request for table _users
$sql = "insert " . $var . "_users (user_id, username, user_password, user_lang, user_email, user_active, rules, user_style) values ('1', '" . $sqladmin . "', '" . $md5passwd . "', 'german', '" . $sqlmail . "', '1', '0', '1')";

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
  echo "INSTALL COMPLETE";
}else{
  mysqli_close($con);
  exit("INSTALL FAIL");
}

session_destroy();
?>
