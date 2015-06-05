<?php
//=> set permissions 0644
function set_permission_0644($var){
$file = "$var";
$perm = 0644;
  if(!@chmod($file, $perm) == true) {
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "set permissions to 0644",$header);
  }
}
	
//=> set permissions 0777
function set_permission_0777($var){
$file = "$var";
$perm = 0777;
  if(!@chmod($file, $perm) == true) {
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "set permissions to 0777",$header);
  }
}
?>
