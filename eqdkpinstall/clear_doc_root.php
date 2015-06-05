<?php

function clear_doc_root($var){
  $delete1 = ("/var/www/vhosts/domain.de/$var/a_new_webspace_logo.png");
  $delete2 = ("/var/www/vhosts/domain.de/$var/a_new_webspace_index.php");
  if(!@unlink($delete1)){
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "clear doc root var1",$header);
  }
  if(!@unlink($delete2)){
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "clear doc root var2",$header);
  }
}

?>
