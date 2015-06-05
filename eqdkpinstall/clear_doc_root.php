<?php

function clear_doc_root($dkpadress){
  $delete1 = ("/var/www/vhosts/at.guilddrive.de/$dkpadress/rock.css");
  $delete2 = ("/var/www/vhosts/at.guilddrive.de/$dkpadress/index.html");
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
