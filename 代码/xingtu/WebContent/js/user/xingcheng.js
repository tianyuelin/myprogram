var count=0;
function jia() {
	var goimg = document.getElementById('jia1');
	goimg.setAttribute("src","img/icon/jiaed.png");
}
function qjia() {
	var goimg = document.getElementById('jia1');
	goimg.setAttribute("src","img/icon/jia.png");
}
function jia2() {
	var goimg = document.getElementById('jia2');
	goimg.setAttribute("src","img/icon/jiaed.png");
}
function qjia2() {
	var goimg = document.getElementById('jia2');
	goimg.setAttribute("src","img/icon/jia.png");
}
function deleteed() {
	var goimg = document.getElementById('deleted');
	goimg.setAttribute("src","img/icon/deleted.png");
}
function qdeeted() {
	var goimg = document.getElementById('deleted');
	goimg.setAttribute("src","img/icon/delete.png");
}
$('#add_f_title').click(function(){
	count++;
	$('#xingcheng').append('<div id="part'+count+'"><div class="ltitle"></div><input type="text" class="f_title" placeholder="NewTitle" onchange="changetitle()" id="title'+count+'"><div class="context'+count+'"><div class="didian"><img src="img/icon/dizhi.png"><input class="address" type="text" placeholder="添加地点" id="didian'+count+'" onchange="changeaddress()"></div><div class="neirong"><p id="pl_tcp'+count+'">记录下这段旅途中那些美好的点点滴滴吧~</p><textarea id="tcp_content'+count+'" maxlength="2000" onchange="this.value=this.value.substring(0,2000)"onkeydown="this.value=this.value.substring(0,2000)" onkeyup="this.value=this.value.substring(0,2000)"></textarea><span class="t_h"><i>0</i>/2000</span><input type="file"  name="file" id="doc'+count+'" multiple="multiple" onchange="javascript:setImagePreviews();" accept="image/*" /><div id="dd'+count+'"></div></div></div></div>');
	$("#gailan").append('<div id="g'+count+'"><span id="ltitle'+count+'" class="lt">NewTitle</span><br><span>地点：</span><span id="dizhi'+count+'" class="dz">add'+count+'</span><br></div>');
});
$("#delete").click(function(){
	if(count!=0){
		$("div").remove("#part"+count);
		$("div").remove("#g"+count);
		count--;
	}else if(count==0){
		alert("还没有创建第一个啦！")
	}
	
});
$('#add_img').click(function(){
	$('#neirong').append('<input type="file">')
});
$("#tcp_content"+count).focus(function(){
    if($(this).val()==""){
        $("#context"+count+" p").css('display','none')
    }
}).blur(function(){
    if($(this).val()==""){
        $("#context"+count+" p").css('display','block')
    }else{
        $("#context"+count+" p").css('display','none')
    }
});

$("#pl_tcp"+count).click(function(){
	　　$(this).css('display','none');
	　　$("#tcp_content"+count).focus();
});
function changetitle(){
	var span =document.getElementById('ltitle'+count);
	var inputtitle = document.getElementById('title'+count).value;
	span.innerHTML=inputtitle;
}
function changeaddress(){
	var span =document.getElementById('dizhi'+count);
	var inputtitle = document.getElementById('didian'+count).value;
	span.innerHTML=inputtitle;
}
/*
$("#idFile").click(function(){
	$("#localImag").append('<div id="localImag"><img id="preview" alt="预览图片" src="../img/userphoto.jpg" style="width: 150px; height: 170px;" /></div>');
});
*/
function setImagePreviews(avalue) {
    var docObj = document.getElementById("doc"+count);
    var dd = document.getElementById("dd"+count);
    alert("dd"+count)
    dd.innerHTML = "";
    var fileList = docObj.files;
    for (var i = 0; i < fileList.length; i++) {    
        dd.innerHTML += "<div style='float:left' > <img id='img"+count+i+"'  /> </div>";
        alert(dd.innerHTML)
        var imgObjPreview = document.getElementById("img"+count+i); 
        if (docObj.files && docObj.files[i]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '150px';
            imgObjPreview.style.height = '180px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[i]);
        }
        else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            alert(imgSrc)
            var localImagId = document.getElementById("img" + i);
            //必须设置初始大小
            localImagId.style.width = "150px";
            localImagId.style.height = "180px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            }
            catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
    }  
    return true;
}

