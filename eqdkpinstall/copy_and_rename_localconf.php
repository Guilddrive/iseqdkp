<?php
//=> important notice: before hashing md5(mysql_prefix+databasename) the folder musst be called dkphash!
	
function copy_and_rename_localconf($var){
  $file = "/var/www/vhosts/domain.de/localconf.gd"; //=> file-template
  $newfile = "/var/www/vhosts/domain.de/$var.domain.de/data/dkphash/eqdkp/config/localconf.php";
			
  if (!copy($file, $newfile)) {
    $header = "From: Error-Reporting <error@tld.de>\r\n";
    $header .= "Content-Type: text/plain; Charset=utf-8\r\n";
    mail("admin@tld.de", "ERROR:EQDKP_INSTALLATION", "copy and rename localconf",$header);
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
