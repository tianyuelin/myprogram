var count=1;
function addcity(obj){
	//使div的display为none
	var dele1=document.getElementById('did0');
	dele1.style.display="none";
	//创建
	var fid= document.getElementById('titna');//插入的父id
	/*var cit= document.getElementById('cna${citylist.ctid }');*/
	var newdi= document.createElement("div");
	var didi=document.createElement("div");
	var oldadd=obj.getElementsByTagName("div")[0];
	didi.innerText=oldadd.innerText;
	var lefimg= document.createElement("img");
	var num=document.createElement("div");
	var shu=document.createTextNode("1");
	var rigimg=document.createElement("img");
	var delimg=document.createElement("img");
	newdi.id='myci'+count;
	didi.id='dizhi'+count;
	num.id='ts'+count;
	lefimg.src="http://localhost:8080/xingtu/img/left-square.png";
	lefimg.id='lef'+count;
	rigimg.src="http://localhost:8080/xingtu/img/right-square.png";
	rigimg.id='rig'+count;
	delimg.src="http://localhost:8080/xingtu/img/clo.png";
	delimg.id='del'+count;
	newdi.appendChild(didi);
	newdi.appendChild(lefimg);
	num.appendChild(shu);
	newdi.appendChild(num);
	newdi.appendChild(rigimg);
	newdi.appendChild(delimg);
	fid.appendChild(newdi);
	count++;
	lefimg.attachEvent("onclick",delnum);
	rigimg.attachEvent("onclick",addnum);
}
/*function changecity(){
	var dele1=document.getElementById('did0');
	dele1.style.display="none";
	var fid= document.getElementById('titna');
	var didi=document.createElement("div");
	var inputtitle = document.getElementById('diz').value;
	didi.innerText=inputtitle;
	var lefimg= document.createElement("img");
	var num=document.createElement("input");
	var shu=document.createTextNode(number);
	var rigimg=document.createElement("img");
	newdi.id='myci'+count;
	didi.id='dizhi'+count;
	num.id='ts'+count;
	lefimg.src="http://localhost:8080/xingtu/img/left-square.png";
	lefimg.id='lef'+count;
	rigimg.src="http://localhost:8080/xingtu/img/right-square.png";
	rigimg.id='rig'+count;
	newdi.appendChild(didi);
	newdi.appendChild(lefimg);
	num.appendChild(shu);
	newdi.appendChild(num);
	newdi.appendChild(rigimg);
	fid.appendChild(newdi);
	count++;
}*/
document.getElementById('lef1').onclick=function(){
	var jian=document.getElementById('ts1');
	var shuzi=jian.innerText;
	alert(zhuzi);
	shuzi--;
	alert(zhuzi);
	jian.innerText=shuzi;
}
document.getElementById('rig1').onclick=function(){
	var jia=document.getElementById('ts1');
	var shuzi=jia.innerText;
	shuzi++;
	jia.innerText=shuzi;
}
/*$("#del1").click(function(){
	$("div").remove("#myci1");
}*/