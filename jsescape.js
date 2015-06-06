//#####################################*
//» Script by Daniel@guilddrive.de
//» https://guilddrive.de
//» admin@guilddrive.de
//» 05-06-2015
//» example javascript to verify strings before you send it to the form 

function checkForm(form)
{
    if(form.adminlogin.value == "") {
      alert("You forgot to specify a username for the admin account!");
      form.adminlogin.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.adminlogin.value)) {
      alert("The user name can only contain letters, numbers and underscores!");
      form.adminlogin.focus();
      return false;
    }

    if(form.passwd.value != "" && form.passwd.value == form.eqdkppasswd2.value) {
      if(form.passwd.value.length < 8) {
        alert("The password must contain at least 8 characters!");
        form.passwd.focus();
        return false;
      }
      if(form.passwd.value == form.adminlogin.value) {
        alert("The password may not match the user name!");
        form.passwd.focus();
        return false;
      }
    
    } else {
      alert("The two passwords do not match!");
      form.passwd.focus();
      return false;
    }
	
	 if(form.eqdkpkey.value != "" && form.eqdkpkey.value == form.eqdkpkey2.value) {
      if(form.eqdkpkey.value.length < 8) {
        alert("The encryption key must contain at least 8 characters!");
        form.eqdkpkey.focus();
        return false;
      }
      if(form.eqdkpkey.value == form.adminlogin.value) {
        alert("The encryption key may not match the user name!");
        form.eqdkpkey.focus();
        return false;
      }
    
    } else {
      alert("The two encryption keys do not match!");
      form.eqdkpkey.focus();
      return false;
    }
}
