function validation(){
	
	var yname = document.getElementById('yname').value;
	var cno = document.getElementById('cno').value;
	var date = document.getElementById('date').value;
	var time = document.getElementById('time').value;
	var mem = document.getElementById('mem').value;
	var ground = document.getElementById('ground').value;
	var other = document.getElementById('other').value;
	var pool = document.getElementById('pool').value;

	
if(yname.length == 0) {
 	document.getElementById('yn').innerHTML="** You cannot have empty values for this field  <br>";
 	return false;
 }if (!yname.match(/^[A-Za-z]+$/)) {
 	document.getElementById('yn').innerHTML="** This field should contain only letters  <br>";
 	return false;
 }{document.getElementById('yn').innerHTML=" ";
 	
}



if (cno.length == 0) {
 	document.getElementById('cn').innerHTML="** You cannot have empty values for this field  <br>";
 	return false;
 }
 if (cno.length !== 10) {
 	document.getElementById('cn').innerHTML="** Please enter your 10 digit Contact Number  <br>";
 	return false;
 }
 if (isNaN(cno)) {
 	document.getElementById('cn').innerHTML="** This field should contain only numbers  <br>";
 	return false;
 }{document.getElementById('cn').innerHTML=" ";
 	
}

 if (date == "") {
 	document.getElementById('dt').innerHTML="** You cannot have empty values for this field  <br>";
 	return false;
 }{document.getElementById('dt').innerHTML=" ";
 	
}

 if (time == "") {
 	document.getElementById('ti').innerHTML="** You cannot have empty values for this field  <br>";
 	return false;
 }{document.getElementById('ti').innerHTML=" ";
 	
}

 if (mem == "") {
 	document.getElementById('nom').innerHTML="** You cannot have empty values for this field <br>";
 	return false;
 }
 if (mem <"0") {
 	document.getElementById('nom').innerHTML="** You cannot have negative values for this field <br>";
 	return false;
 }{document.getElementById('nom').innerHTML=" ";
 	
}


 if (ground == "") {
 	document.getElementById('gd').innerHTML="** You cannot have empty values for this field  <br>";
 	return false;
 }
 if (ground !== "yes" && ground !== "no") {
 	document.getElementById('gd').innerHTML="** Please enter 'yes' or 'no' only  <br>";
 	return false;
 }{document.getElementById('gd').innerHTML=" ";
 	
}

if (!other.match(/^[A-Za-z]+$/)) {
 	document.getElementById('os').innerHTML="** This field should contain only letters  <br>";
 	return false;
 }{document.getElementById('os').innerHTML=" ";
 	
}
 
 if (pool == "") {
 	document.getElementById('pl').innerHTML="** You cannot have empty values for this field  <br>";
 	return false;
 }
  if (pool !== "yes" && pool !== "no") {
 	document.getElementById('pl').innerHTML="** Please enter 'yes' or 'no' only  <br>";
 	return false;
 }{document.getElementById('pl').innerHTML=" ";
 	
}


 	
}

 
 
