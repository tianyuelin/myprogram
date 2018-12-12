var titlecount=0;
var addresscount=0;
var imgcount=0;
var textcount=0;
function jia() {
	var goimg = document.getElementById('jia1');
	goimg.setAttribute("src","../img/icon/jiaed.png");
}
function qjia() {
	var goimg = document.getElementById('jia1');
	goimg.setAttribute("src","../img/icon/jia.png");
}
function jia2() {
	var goimg = document.getElementById('jia2');
	goimg.setAttribute("src","../img/icon/jiaed.png");
}
function qjia2() {
	var goimg = document.getElementById('jia2');
	goimg.setAttribute("src","../img/icon/jia.png");
}
function jia3() {
	var goimg = document.getElementById('jia3');
	goimg.setAttribute("src","../img/icon/jiaed.png");
}
function qjia3() {
	var goimg = document.getElementById('jia3');
	goimg.setAttribute("src","../img/icon/jia.png");
}
function jia4() {
	var goimg = document.getElementById('jia4');
	goimg.setAttribute("src","../img/icon/jiaed.png");
}
function qjia4() {
	var goimg = document.getElementById('jia4');
	goimg.setAttribute("src","../img/icon/jia.png");
}
function deleteed() {
	var goimg = document.getElementById('d1');
	goimg.setAttribute("src","../img/icon/deleted.png");
}
function qdeeted() {
	var goimg = document.getElementById('d1');
	goimg.setAttribute("src","../img/icon/delete.png");
}

function deleteed2() {
	var goimg = document.getElementById('d2');
	goimg.setAttribute("src","../img/icon/deleted.png");
}
function qdeeted2() {
	var goimg = document.getElementById('d2');
	goimg.setAttribute("src","../img/icon/delete.png");
}
function deleteed3() {
	var goimg = document.getElementById('d3');
	goimg.setAttribute("src","../img/icon/deleted.png");
}
function qdeeted3() {
	var goimg = document.getElementById('d3');
	goimg.setAttribute("src","../img/icon/delete.png");
}
function deleteed4() {
	var goimg = document.getElementById('d4');
	goimg.setAttribute("src","../img/icon/deleted.png");
}
function qdeeted4() {
	var goimg = document.getElementById('d4');
	goimg.setAttribute("src","../img/icon/delete.png");
}
//添加小标题
$('#add_f_title').click(function(){
	titlecount++;
	$('#xingcheng').append('<div id="part'+titlecount+'"><div id="ltitle'+titlecount+'"><input type="text" class="f_title" placeholder="NewTitle" onchange="changetitle()" id="title'+titlecount+'" name="ltitle"></div><div id="didian0" class="didian"><img src="../img/icon/dizhi.png"><input class="address" type="text" placeholder="添加地点" id="didian0" onchange="changeaddress()" name="address"></div><div class="neirong"><textarea name=text id="content'+titlecount+'" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></div>');
	$("#gailan").append('<div id="t'+titlecount+'"><span>T：</span><span id="ltitle'+titlecount+'" class="lt">NewTitle</span><br/></div>');
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[id="content'+titlecount+'"]', {
			cssPath : '../kindeditor/plugins/code/prettify.css',
			uploadJson : '../kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					document.forms['example'].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					document.forms['example'].submit();
				});
			}
		});
		prettyPrint();
	});
});
//添加地点
$('#add_address').click(function(){
	addresscount++;
	$('#xingcheng').append('<div class="didian" id="didian'+addresscount+'"><img src="../img/icon/dizhi.png"><input class="address" type="text" placeholder="添加地点" id="didian'+addresscount+'" onchange="changeaddress()" name="address"></div>');
	$("#gailan").append('<div id="d'+addresscount+'"><span>地点：</span><span id="dizhi0" class="dz">add0</span><br>');
});
//添加内容
$('#add_text').click(function(){
	textcount++;
	$('#xingcheng').append('<textarea maxlength="2000" onkeydown="this.value=this.value.substring(0,2000)" onkeyup="this.value=this.value.substring(0,2000)"id="didian'+textcount+' name="context">记录下这段旅途中那些美好的点点滴滴吧~</textarea>');
});
//删除标题
$(document).on('click', '#dt',function(){
	alert("#dt"+titlecount)
	if(titlecount!=0){
		$("div").remove("#part"+titlecount);
		$("div").remove("#t"+titlecount);
		titlecount--;
	}else if(titlecount==0){
		alert("还没有创建第一个啦！");
	}
});

//删除地址
$(document).on('click', '#da',function(){
	alert("#da"+addresscount);
	if(addresscount!=0){
		$("div").remove("#didian"+addresscount);
		$("div").remove("#d"+addresscount);
		addresscount--;
	}else if(addresscount==0){
		alert("还没有创建第一个啦！");
	}
});
//删除内容
$(document).on('click', '#dtext',function(){
	if(textcount!=0){
		$("div").remove("#didian"+textcount);
		textcount--;
	}else if(textcount==0){
		alert("还没有创建第一个啦！");
	}
});
//删除图片
$(document).on('click', '#di',function(){
	if(imgcount!=0){
		$("img").remove("#img"+imgcount);
		imgcount--;
	}else if(imgcount==0){
		alert("还没有创建第一个啦！");
	}
});
//添加图片
$(document).on('change', '#uploadimg', function () { //PictureUrl为input file 的id
	//console.log(this.files[0]); 
    function getObjectURL(file) { 
        var url = null; 
        if (window.createObjcectURL != undefined) { 
            url = window.createOjcectURL(file); 
        } else if (window.URL != undefined) { 
            url = window.URL.createObjectURL(file); 
        } else if (window.webkitURL != undefined) { 
            url = window.webkitURL.createObjectURL(file); 
        } 
        return url; 
    } 
    var objURL = getObjectURL(this.files[0]);//这里的objURL就是input file的真实路径 
    imgcount++;
    $("#part"+titlecount).append("<img src='" + objURL + "' width='200px'; height='200px' id='img"+imgcount+"' name=img/>");
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
/*
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
*/
//富文本编辑器

KindEditor.ready(function(K) {
	var editor1 = K.create('textarea[id="content'+titlecount+'"]', {
		cssPath : '../kindeditor/plugins/code/prettify.css',
		uploadJson : '../kindeditor/jsp/upload_json.jsp',
		fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
		allowFileManager : true,
		afterCreate : function() {
			var self = this;
			K.ctrl(document, 13, function() {
				self.sync();
				document.forms['example'].submit();
			});
			K.ctrl(self.edit.doc, 13, function() {
				self.sync();
				document.forms['example'].submit();
			});
		}
	});
	prettyPrint();
});
