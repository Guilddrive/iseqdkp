<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://www.guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function clear_doc_root($subdomain){
	$delete1 = ("/var/www/vhosts/at.guilddrive.de/$subdomain/any.file"); 
	$delete2 = ("/var/www/vhosts/at.guilddrive.de/$subdomain/any.file");

	if(!@unlink($delete1))
		
	if(!@unlink($delete2))
			errormail("ERROR:EQDKP_INSTALLATION","clear doc root $subdomain");
}
?>
