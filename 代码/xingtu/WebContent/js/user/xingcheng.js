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
$('#add_f_title').click(function(){
	$('#xingcheng').append
	('<div class="ltitle"><input type="text" class="f_title" placeholder="输入小标题"></div><div class="context"><textarea rows="6" cols="83" class="neirong"></textarea></div>')
	alert("1");
});
$('#add_img').click(function(){
	$('#neirong').append('<input type="file">')
	alert("1");
});
$(".tcp_content").focus(function(){
    if($(this).val()==""){
        $(".context p").css('display','none')
    }
     
}).blur(function(){
    if($(this).val()==""){
        $(".context p").css('display','block')
    }else{
        $(".context p").css('display','none')
    }
     
});
$(".pl_tcp").click(function(){
	　　$(this).css('display','none');
	　　$(".tcp_content").focus();
	});

