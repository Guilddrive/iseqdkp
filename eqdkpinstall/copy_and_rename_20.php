<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://www.guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function copy_and_rename($path, $var){
  $file = "$path . "hosttemplate20.sql"; //=> mysql-template
  $newfile = "$path$var . ".sql"; //=> filename = prefix
			
  if (!copy($file, $newfile)) {
  	errormail("ERROR:EQDKP_INSTALLATION","copy and rename .sql-hosttemplate $path$var");
  }
			
  //=> adjust prefix
  $search = eqdkp20_;
  $replace = "" . $sqlname . "_"; //MySQL-Prefix = Subdomain-Prefix
  $file = "$path . "httpdocs/eqdkpinstall/sqltmp/" . $var . ".sql"; //=> filename = prefix

$content = file_get_contents($file);
$content = str_replace($search, $replace, $content);
$fh = fopen($file, "w");
$content = fputs($fh, $content);
fclose($fh);
}
?>
