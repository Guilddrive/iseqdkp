<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015
//» important notice: before hashing md5(mysql_prefix+databasename) the folder musst be called dkphash!

function copy_and_rename_localconf($var){
  $file = "/var/www/vhosts/domain.de/localconf.gd"; //=> file-template
  $newfile = "/var/www/vhosts/domain.de/$var.domain.de/data/dkphash/eqdkp/config/localconf.php";
			
  if (!copy($file, $newfile)) {
    errormail("ERROR:EQDKP_INSTALLATION","copy and rename localconf $subdomain");
  }
			
  //=> adjust copied file
  $search = eqdkp20_;
  $replace = "" . $var . "_";
  $file = "/var/www/vhosts/domain.de/$var.domain.de/data/dkphash/eqdkp/config/localconf.php";
  $content = file_get_contents($file);
  $content = str_replace($search, $replace, $content);
  $fh = fopen($file, "w");
  $content = fputs($fh, $content);
  fclose($fh);
}
?>
