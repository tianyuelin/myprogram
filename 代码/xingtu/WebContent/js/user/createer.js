var count=1;
var spancount=0;
function addxq(obj){
	var oldimg=obj.getElementsByTagName("img")[0];
	var oldname=obj.getElementsByTagName("div")[2];
	var oldadd=obj.getElementsByTagName("div")[5];
	var oldid=obj.getElementsByTagName("div")[1];
	var fid= document.getElementById('zhong');//插入的父id
	var newdi= document.createElement("div");//创建新div
	var myimg= document.createElement("img");//插入图片
	var myname=document.createElement("div");//插入名称
	var myadd=document.createElement("div");//插入地址
	var mya=document.createElement("a");//插入周边
	
	var zuofid= document.getElementById('zuo');
	var zuoxian=document.createElement("div");//创建显示距离的div
	/*var zuospan1=document.createElement("span");
	var zuospan2=document.createElement("span");
	var zuospan3=document.createElement("span");*/
	var zuod=document.createElement("div");//创建地点的div
	var zuoname= document.createElement("input");//地点的名字
	var yincang= document.createElement("input");//地点的Id
	newdi.id='xian'+count;
	myname.id='di'+count;
	myadd.id='pj'+count;
	mya.id='ck'+count;
	zuoxian.id='xia'+count;
	zuod.id='zd'+count;
	zuoname.id='dim'+count;
	zuoname.type="text";
	zuoname.setAttribute("name","diname");
	zuoname.className="dz";
	zuoname.style.width="150px";
	/*zuospan1.id='fspan'+spancount;
	zuospan2.id='sspan'+spancount;
	zuospan3.id='tspan'+spancount;*/
	myimg.src=oldimg.src;
	myname.innerText=oldname.innerText;
	myadd.innerText=oldadd.innerText;
	yincang.setAttribute("name","diid");
	yincang.type="hidden";
	yincang.id='yc'+count;
	mya.href='#';
	mya.innerText="查看周边";
	/*transit.search(id1,id2);*/
	zuoname.value=oldname.innerText;
	yincang.value=oldid.innerText;
	newdi.appendChild(myimg);
	newdi.appendChild(myname);
	newdi.appendChild(myadd);
	newdi.appendChild(mya);
	fid.appendChild(newdi);
	zuofid.appendChild(zuoxian);
	zuod.appendChild(zuoname);
	zuod.appendChild(yincang);
	zuofid.appendChild(zuod);/*
	zuoxian.appendChild(zuospan1);
	zuoxian.appendChild(zuospan2);
	zuoxian.appendChild(zuospan3);*/
	if(count>1){
	
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
	var output = "两地之间的距离为";
	var dis = "距离：";
	var divertime = "驾车所需时长：";
	var bustime;
	var searchComplete = function (results){
		if (transit.getStatus() != BMAP_STATUS_SUCCESS){
			return ;
		}
		var plan = results.getPlan(0);
		dis+=plan.getDistance(true)+' \n ';
		divertime+=plan.getDuration(true)+' \n ';
		bustime="公交所需时长："+plan.getDuration(true)+' \n ';
	}
	var percount = count-1;
	var zuospan1=document.createElement("span");
	var zuospan2=document.createElement("span");
	var zuospan3=document.createElement("span");
	spancount++;
	zuospan1.id='fspan'+spancount;
	zuospan2.id='sspan'+spancount;
	zuospan3.id='tspan'+spancount;
	zuoxian.appendChild(zuospan1);
	zuoxian.appendChild(zuospan2);
	zuoxian.appendChild(zuospan3);
	var name1=document.getElementById('dim'+percount).value;
	var name2=document.getElementById('dim'+count).value;
	var id1= name1;
	var id2= name2;
	var transit = new BMap.DrivingRoute(map, {renderOptions: {map: map},
		onSearchComplete: searchComplete,
		onPolylinesSet: function(){
			document.getElementById('fspan'+spancount).innerText=dis;
			document.getElementById('sspan'+spancount).innerText=divertime;
	}});
	
	var transit2 = new BMap.TransitRoute(map, {renderOptions: {map: map},
		onSearchComplete: searchComplete,
		onPolylinesSet: function(){
			document.getElementById("tspan"+spancount).innerText=bustime;
		}});

	transit.search(id1,id2);
	transit2.search(id1,id2);
	}
	count++;
}
/*// 百度地图API功能
var map = new BMap.Map("allmap");
var id1= "北京";
var id2= "天津";
map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
var output = "两地之间的距离为";
var searchComplete = function (results){
	if (transit.getStatus() != BMAP_STATUS_SUCCESS){
		return ;
	}
	var plan = results.getPlan(0);
	output += plan.getDuration(true) + "\n";                //获取时间
	output += "总路程为：" ;
	output += plan.getDistance(true) + "\n";             //获取距离
}
var transit = new BMap.DrivingRoute(map, {renderOptions: {map: map},
	onSearchComplete: searchComplete,
	onPolylinesSet: function(){        
		setTimeout(function(){alert(output)},"1000");	
}});*/
