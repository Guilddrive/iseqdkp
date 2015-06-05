<?php

function hashandrename($var){
  $hash = md5($var . "_" . $var); //=> md5(mysql_prefix+databasename)
  $rename = rename("/var/www/vhosts/.domain.de/$var.domain.de/data/dkphash", "/var/www/vhosts/.domain.de/$var.domain.de/data/$hash");
    if($rename == false)
    
    
}

?>
