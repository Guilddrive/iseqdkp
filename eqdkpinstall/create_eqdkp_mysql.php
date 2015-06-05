<?php session_start();
require('./eqdkp.check.php'); //=> Check if an EQdkp Hosting is still existing

define("HOST", "12.34.567.89"); //=> set SERVER ID
define("PORT", 1234); //=> set PORT
define("PATH", "enterprise/control/agent.php"); //=> set Plesk API-Path
define("LOGIN", "username"); //=> set API-Username
define("PASSWD", "password"); //=> set API-Password
define("PROTO_VER", "1.6.6.0");

$mysql = $_SESSION["mysql"]; //=> set MySQL-Database name
$sub_id = '1'; //=> Subdomain ID of the Webspace in Plesk
$proto = PROTO_VER;
$data =<<<EOF
<?xml version="1.0" encoding="UTF-8" ?>
<packet version="$proto">
<database>
    <add-db>
     <webspace-id>$sub_id</webspace-id>
      <name>$mysql</name>
     <type>mysql</type>
    </add-db>
</database>
</packet>
EOF;

function write_callback($ch, $data){
$xml = simplexml_load_string($data);
$mysql_status = $xml->database->{'add-db'}->result->status;
$mysql_id = $xml->database->{'add-db'}->result->id;

if($mysql_status != error){
	$subdomain = $_SESSION["subdomain"];
	$con = mysqli_connect("localhost","mysqluser",'mysqlpasswd');
	mysqli_select_db($con, "guilddrive_v4");
	$sql ="insert aktiv_eqdkp_subscription (mysql_id, subdomain) values ('$mysql_id','$subdomain')";
	mysqli_query($con, $sql);
	exit("&nbsp;<img width=\"11\" height=\"11\" src=\"../images/ok.png\"/>");
}else{
	$mysql_errcode = $xml->database->{'add-db'}->result->errcode;
	$mysql_errtext = $xml->database->{'add-db'}->result->errtext;
	exit("$mysql_errcode: $mysql_errtext");
}
		
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
