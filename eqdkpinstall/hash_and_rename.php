<?php
function hash_and_rename($var){
  $hash = md5($var . "_" . $var); //=> md5(mysql_prefix+databasename)
  $rename = rename("/var/www/vhosts/domain.de/$var.domain.de/data/dkphash", "/var/www/vhosts/domain.de/$var.domain.de/data/$hash");
    if($rename == false){
      $header = "From: Error-Reporting <email@tld.de>\r\n";
      $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
      mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "hash and rename $var",$header);
    }
}
?>
