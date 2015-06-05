<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function extract_eqdkp_template($var){
  $zip = new ZipArchive;
  if ($zip->open('/var/www/vhosts/domain.de/eqdkp_template20.zip') === TRUE) {
    $zip->extractTo("/var/www/vhosts/domain.de/$var/");
    $zip->close();
  }else{
    errormail("ERROR:EQDKP_INSTALLATION","extract template 20 $subdomain");
  }
}
?>
