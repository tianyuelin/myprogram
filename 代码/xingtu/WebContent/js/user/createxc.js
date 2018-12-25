var count=1;
var tianshu=1;
var tianshu1=1;
var tianshu2=1;
var tianshu3=1;
var tianshu4=1;
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
	tianshu=1;
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
	count=count+1;
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

$(document).on("click",'#lef1',function(){
	var jian=document.getElementById('ts1');
	if(tianshu1>1){
		tianshu1--;
		jian.innerText=tianshu1;
	}else{
		jian.innerText=1;
	}
})
$(document).on("click","#rig1",function(){
	var jia=document.getElementById('ts1');
	tianshu1++;
	jia.innerText=tianshu1;
})
$(document).on("click","#del1",function(){
	$("div").remove("#myci1");
})
$(document).on("click",'#lef2',function(){
	var jian=document.getElementById('ts2');
	if(tianshu2>1){
		tianshu2--;
		jian.innerText=tianshu2;
	}else{
		jian.innerText=1;
	}
})
$(document).on("click","#rig2",function(){
	var jia=document.getElementById('ts2');
	tianshu2++;
	jia.innerText=tianshu2;
})
$(document).on("click","#del2",function(){
	$("div").remove("#myci2");
})
$(document).on("click",'#lef3',function(){
	var jian=document.getElementById('ts3');
	if(tianshu3>1){
		tianshu3--;
		jian.innerText=tianshu3;
	}else{
		jian.innerText=1;
	}
})
$(document).on("click","#rig3",function(){
	var jia=document.getElementById('ts3');
	tianshu3++;
	jia.innerText=tianshu3;
})
$(document).on("click","#del3",function(){
	$("div").remove("#myci3");
})