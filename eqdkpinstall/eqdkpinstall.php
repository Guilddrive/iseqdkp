<script>
function iseqdkp()
{
	create_eqdkp_sub();
	create_eqdkp_mysql();
	create_eqdkp();
}

function refresh(){
window.setTimeout('window.location = "https://www.guilddrive.de"',5000);
}

function create_eqdkp_sub()
{
    if (window.XMLHttpRequest)
    {
        // AJAX nutzen mit IE7+, Chrome, Firefox, Safari, Opera
        xmlhttp=new XMLHttpRequest();
    }
    else
    {
        // AJAX mit IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("create_eqdkp_sub").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET","./create_eqdkp_sub.php",false);
    xmlhttp.send();
}

function create_eqdkp_mysql()
{
    if (window.XMLHttpRequest)
    {
        // AJAX nutzen mit IE7+, Chrome, Firefox, Safari, Opera
        xmlhttp=new XMLHttpRequest();
    }
    else
    {
        // AJAX mit IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("create_eqdkp_mysql").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET","./create_eqdkp_mysql.php",false);
    xmlhttp.send();
}

function create_eqdkp()
{
    if (window.XMLHttpRequest)
    {
        // AJAX nutzen mit IE7+, Chrome, Firefox, Safari, Opera
        xmlhttp=new XMLHttpRequest();
    }
    else
    {
        // AJAX mit IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("create_eqdkp").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET","./proceed_eqdkp_install.php",false);
    xmlhttp.send();
}

</script>
