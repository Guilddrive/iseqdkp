<?php
//=> set permissions 0644
function set_permission_0644($file_or_dir)
{
$datei = "$file_or_dir";
$rechte = 0644;
  if(!@chmod($datei, $rechte) == true) {
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "set permissions to 0644",$header);
  }
}
	
//=> set permissions 0777
function set_permission_0777($file_or_dir)
{
$datei = "$file_or_dir";
$rechte = 0777;
  if(!@chmod($datei, $rechte) == true) {
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "set permissions to 0777",$header);
  }
}
?>
