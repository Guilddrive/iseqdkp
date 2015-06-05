<?php

function extract_eqdkp_template($var){
  $zip = new ZipArchive;
  if ($zip->open('/var/www/vhosts/at.guilddrive.de/eqdkp_template20.zip') === TRUE) {
    $zip->extractTo("/var/www/vhosts/at.guilddrive.de/$dkpadress/");
    $zip->close();
  }else{
    errormail("ERROR:EQDKP_INSTALLATION","extract_template_20.php");
  }
}

?>
