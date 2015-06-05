<?php session_start();
	require('./eqdkp.check.php'); //=> Check if an EQdkp Hosting is still existing

define("HOST", "12.34.567.89"); //=> set Server ID
define("PORT", 1234); //=set Server PORT
define("PATH", "enterprise/control/agent.php"); //=>set Plesk API-Path
define("LOGIN", "username");  //=>set API-Username
define("PASSWD", "password"); //=>set API-Password
define("PROTO_VER", "1.6.6.0");

$sub = $_SESSION["subdomain"];  //=> 
$proto = PROTO_VER;
$data =<<<EOF
<?xml version="1.0" encoding="UTF-8" ?>
<packet version="$proto">
<subdomain>
        <add>
            <parent>.domain.de</parent>
            <name>$sub</name>
            <property>
               <name>www_root</name>
               <value>/$sub.domain.de</value>
            </property>
			      <property>
				        <name>php</name>
				        <value>true</value>
			      </property>
			      <property>
				        <name>php_handler_id</name>
				        <value>5.5.24</value>
			      </property>
			  </add>
    </subdomain>
</packet>
EOF;

function write_callback($ch, $data){
$xml = simplexml_load_string($data);
$subdomain_status = $xml->subdomain->add->result->status;
$subdomain_errcode = $xml->subdomain->add->result->errcode;
$subdomain_errtext = $xml->subdomain->add->result->errtext;
$subdomain_id = $xml->subdomain->add->result->id;

if($subdomain_status != error){
	echo "<img width=\"11\" height=\"11\" src=\"../images/ok.png\"/>";
}else
    if($subdomain_errcode == 1007){
  		echo $subdomain_id;
  		exit("&nbsp;<img width=\"11\" height=\"11\" src=\"../images/ok.png\"/>");
	  }else
	    exit("$subdomain_errcode: $subdomain_errtext");
		
return strlen($data);
}

function sendCommand()
{
$url = "https://" . HOST . ":" . PORT . "/" . PATH;

$headers = array(
"HTTP_AUTH_LOGIN: " . LOGIN,
"HTTP_AUTH_PASSWD: " . PASSWD,
"HTTP_PRETTY_PRINT: TRUE",
"Content-Type: text/xml",
);

// Initalize the curl engine
$ch = curl_init();

// Set the curl options
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
// this line makes it work under https
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_HTTPHEADER, &$headers);

// Set the URL to be processed
curl_setopt($ch, CURLOPT_URL, $url);

// Set the callback functions
curl_setopt($ch, CURLOPT_WRITEFUNCTION, write_callback);

// Set the data to be send
global $data;
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

// Debug, however...
curl_setopt($ch, CURLOPT_VERBOSE, 1);

$result = curl_exec($ch);

if ($result == CURL_OK) {
//print_r(curl_getinfo($ch));
} else {
echo "\n\n-------------------------\n" .
"cURL error number:" .
curl_errno($ch);
echo "\n\ncURL error:" . curl_error($ch);
}

curl_close($ch);

return;
}

sendCommand();

?>
