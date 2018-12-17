var count=1;
function addxq(obj){
	var oldimg=obj.getElementsByTagName("img")[0];
	var oldname=obj.getElementsByTagName("div")[1];
	var oldadd=obj.getElementsByTagName("div")[4];
	var fid= document.getElementById('zhong');//插入的父id
	var newdi= document.createElement("div");//创建新div
	var myimg= document.createElement("img");//插入图片
	var myname=document.createElement("div");//插入名称
	var myadd=document.createElement("div");//插入地址
	var mya=document.createElement("a");//插入周边
	
	var zuofid= document.getElementById('zuo');
	var zuoxian=document.createElement("div");
	var zuoname= document.createElement("input");
	newdi.id='xian'+count;
	myname.id='di'+count;
	myadd.id='pj'+count;
	mya.id='ck'+count;
	zuoxian.id='xia'+count;
	zuoname.id='dim'+count;
	zuoname.type="text";
	zuoname.setAttribute("name","diname");
	zuoname.className="dz";
	zuoname.style.width="150px";
	myimg.src=oldimg.src;
	myname.innerText=oldname.innerText;
	myadd.innerText=oldadd.innerText;
	mya.href='#';
	mya.innerText="查看周边";
	transit.search(id1,id2);
	zuoxian.innerText="相距220km";
	zuoname.value=oldname.innerText;
	newdi.appendChild(myimg);
	newdi.appendChild(myname);
	newdi.appendChild(myadd);
	newdi.appendChild(mya);
	fid.appendChild(newdi);
	zuofid.appendChild(zuoxian);
	zuofid.appendChild(zuoname);
	count++;
}
// 百度地图API功能
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
}});
