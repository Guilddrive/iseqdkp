<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015
//» use it to report errors

function errormail($script, $errtext){
  $header = "From: ERROR-MAIL-REPORTING <error@yourscript.de>\r\n";
  $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
  mail("admin@your.tld", "$script", "$errtext",$header);
}
?>
