// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function pagePopup(url) {
		
	newwindow=window.open(url,'name','height=310,width=250');

	
}

function settingsPopup(){
	//var d = getElementById("myModal");
	//var a = 10000;

	
}



function closePopup() {

	window.alert("Inside JS");

	window.close();
  
}

function loadXMLDoc(){

	alert("Inside loadXMLDoc");
	
	var xmlhttp;
	
	
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
  		xmlhttp=new XMLHttpRequest();
  	}
  	
  	else
  	{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	
	xmlhttp.onreadystatechange=function()
  	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	{
    		document.getElementById("content_layout").innerHTML=xmlhttp.responseText;
    	}
  	}
	
	xmlhttp.open("GET","show_business_news.html.erb",true);
	xmlhttp.send();

}


function displayTimestamp(){
	var timestamp = new Date();
	//var timestamp = new Date();
	document.getElementById('time_text').innerHTML = timestamp;
}