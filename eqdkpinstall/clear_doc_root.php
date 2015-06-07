<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://www.guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function clear_doc_root($path, $subdomain, $file){
	$delete = ($path$subdomain . "/" . $file); 

	if(!@unlink($delete))
		errormail("ERROR:EQDKP_INSTALLATION","clear doc root $path$subdomain$file");
}
?>
