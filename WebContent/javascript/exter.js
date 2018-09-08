function fillcourse(uid)
{

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillcourse").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillcourse.jsp?uid="+uid,true);
	xmlhttp.send();
}

function fillprogram(techid,topic)
{


	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("programsdiv").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillprogram.jsp?techid="+techid+"&topic="+topic,true);
	xmlhttp.send();
}

function filltopics(techid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("filltopics").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","filltopics.jsp?techid="+techid,true);
	xmlhttp.send();
}

function fillppttopics(techid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillppttopics").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillppttopics.jsp?techid="+techid,true);
	xmlhttp.send();
}

function courseebook(uid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillcourse").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","courseebook.jsp?uid="+uid,true);
	xmlhttp.send();
}
function papercourse(uid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillcourse").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","papercourse.jsp?uid="+uid,true);
	xmlhttp.send();
}

function coursenotes(uid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillcourse").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","coursenotes.jsp?uid="+uid,true);
	xmlhttp.send();
}

function fillcours(uid)
{

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillcours").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillcours.jsp?uid="+uid,true);
	xmlhttp.send();
}
function fillsyllabus(uid,cid)
{

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("syllabussdiv").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillsyllabus.jsp?uid="+uid+"&cid="+cid,true);
	xmlhttp.send();
}

function fillppt(techid,ptid)
{
	

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("pptdiv").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillppt.jsp?techid="+techid+"&ptid="+ptid,true);
	xmlhttp.send();
}
function fillyearsem(uid,cid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillyear").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillyearsem.jsp?uid="+uid+"&cid="+cid,true);
	xmlhttp.send();
}
function paperyearsem(uid,cid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillyear").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","paperyearsem.jsp?uid="+uid+"&cid="+cid,true);
	xmlhttp.send();
}

function notesyearsem(uid,cid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillyear").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","notesyearsem.jsp?uid="+uid+"&cid="+cid,true);
	xmlhttp.send();
}
function notessubject(uid,cid,yid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillsubject").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","notessubject.jsp?uid="+uid+"&cid="+cid+"&yid="+yid,true);
	xmlhttp.send();
}
function papersubject(uid,cid,yid)
{
	
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillsubject").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","papersubject.jsp?uid="+uid+"&cid="+cid+"&yid="+yid,true);
	xmlhttp.send();
}

function fillebooks(uid,cid,yid)
{

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("ebookdiv").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillebooks.jsp?uid="+uid+"&cid="+cid+"&yid="+yid,true);
	xmlhttp.send();
}
function fillpaper(uid,cid,yid,sid)
{

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("paperdiv").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillpaper.jsp?uid="+uid+"&cid="+cid+"&yid="+yid+"&sid="+sid,true);
	xmlhttp.send();
}

function fillnotes(uid,cid,yid,sid)
{

	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("notesdiv").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillnotes.jsp?uid="+uid+"&cid="+cid+"&yid="+yid+"&sid="+sid,true);
	xmlhttp.send();
}


function fillyear(uid,cid)
{
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillyear").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillyear.jsp?uid="+uid+"&cid="+cid,true);
	xmlhttp.send();
}

function fillsubject(uid,cid,yid)
{
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("fillsubject").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","fillsubject.jsp?uid="+uid+"&cid="+cid+"&yid="+yid,true);
	xmlhttp.send();
}


function logincheck(email,password)
{
	var email=document.getElementById("email").value;
	var password=document.getElementById("password").value;
	var dataString ='&email1=' + email + '&password1=' + password;
	var xmlhttp;
	if (email == '' || password == '') {
		alert("Please Fill All the Fields");
		}
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHttp")
		}
	xmlhttp.onreadystatechange=function()
	{
	if(xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("loginerror").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","logincheck.jsp?email="+email+"&password="+password,true);
	xmlhttp.send();
}
