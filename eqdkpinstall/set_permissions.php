<?php
//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015

function set_permission_0644($var){
	$file = "$var";
	$perm = 0644;
	if(!@chmod($file, $perm) == true) {
		errormail("ERROR:EQDKP_INSTALLATION","set permissions 0644 $var");
	}
}
	
function set_permission_0777($var){
	$file = "$var";
	$perm = 0777;
	if(!@chmod($file, $perm) == true) {
		errormail("ERROR:EQDKP_INSTALLATION","set permissions 0777 $var");
	}
}
?>
