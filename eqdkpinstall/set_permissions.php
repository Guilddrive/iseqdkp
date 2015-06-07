<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function set_permission($file, $perm){
	if(!@chmod($file, $perm) == true) {
		errormail("ERROR:EQDKP_INSTALLATION","set permissions $perm $file");
	}
}
?>
