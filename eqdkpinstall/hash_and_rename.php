<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function hash_and_rename($path, $subdomain, $var){
  $hash = md5($var . "_" . $var); //=> md5(mysql_prefix+databasename)
  $rename = rename($path$subdomain . "/data/dkphash", $path$subdomain . "/data/" . $hash);
    if($rename == false){
      errormail("ERROR:EQDKP_INSTALLATION","hash and rename $var");
    }
}
?>
