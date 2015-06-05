<?php

function clear_doc_root($dkpadress){
  $delete1 = ("/var/www/vhosts/at.guilddrive.de/$dkpadress/rock.css");
  $delete2 = ("/var/www/vhosts/at.guilddrive.de/$dkpadress/index.html");
  if((!@unlink($delete1))||(!@unlink($delete2)))
    errormail("ERROR:EQDKP_INSTALLATION","clear_doc_root.php");
}

?>
