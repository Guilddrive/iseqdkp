<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function extract_eqdkp_template($path, $subdomain){
  $zip = new ZipArchive;
  if ($zip->open($path . "eqdkp_template20.zip") === TRUE) {
    $zip->extractTo($path . "" . $subdomain . "/");
    $zip->close();
  }else{
    errormail("ERROR:EQDKP_INSTALLATION","extract template 20 path: $path subdomain: $subdomain");
  }
}
?>

