<?php
	
function copy_and_rename($var){
  $file = "/var/www/vhosts/at.guilddrive.de/hosttemplate20.sql"; //=> mysql-template
  $newfile = "/var/www/vhosts/.domain.de/httpdocs/docroot/sqltmp/" . $var . ".sql"; //=> filename = prefix
			
  if (!copy($file, $newfile)) {
    $header = "From: Error-Reporting <error@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "copy and rename $var",$header);
  }
			
  //=> adjust prefix
  $search = eqdkp20_;
  $replace = "" . $sqlname . "_"; //MySQL-Prefix = Subdomain-Prefix
  $file = "/var/www/vhosts/.domain.de/httpdocs/docroot/sqltmp/" . $var . ".sql"; //=> filename = prefix

$content = file_get_contents($file);
$content = str_replace($search, $replace, $content);
$fh = fopen($file, "w");
$content = fputs($fh, $content);
fclose($fh);
}
	
?>
