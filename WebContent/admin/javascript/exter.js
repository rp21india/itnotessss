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
