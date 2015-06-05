<?php

function extract_eqdkp_template($var){
  $zip = new ZipArchive;
  if ($zip->open('/var/www/vhosts/domain.de/eqdkp_template20.zip') === TRUE) {
    $zip->extractTo("/var/www/vhosts/at.guilddrive.de/$var/");
    $zip->close();
  }else{
    $header = "From: Error-Reporting <email@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "extract eqdkp template",$header);
  }
}

?>
