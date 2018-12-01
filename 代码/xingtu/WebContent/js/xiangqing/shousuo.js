
var funStatus = true;//无需手动设置，这是标记是否可以再次进行展开/收缩操作
var unfoldValue=10;//执行展开操作的像素数，越小越慢.并且不会因为数字过大超过设定的max高度而影响显示效果
var shrinkvalue=30;//执行收缩操作的像素数，越小越慢
var time=10;//多长时间操作一次，越小越快
var min=110;//收缩到多少像素的高度停止
var max = 550;//展开到多少像素高度停止

function HideAd(o){

 var timer = setInterval(function(){
  if(o.offsetHeight >= min + shrinkvalue ){
   o.style.height = o.offsetHeight - shrinkvalue + 'px';
   document.getElementById('btn').innerHTML="展开";
   funStatus = false;
  }
  else{
   o.style.height = min+'px';
   funStatus = true;
   clearInterval(timer);
  }
 }, time);
}
function ShowAd(o){

 var timer = setInterval(function(){
  if(o.offsetHeight + unfoldValue < max){
   o.style.height = (o.offsetHeight + unfoldValue) + 'px';
   document.getElementById('btn').innerHTML="收起";
   funStatus = false;
  }
  else{
   o.style.height = max+'px';
   funStatus = true;
   clearInterval(timer);
  }
 },time);
}

function toogle()
{
 if(funStatus)
 {
  var o =document.getElementById('jieshao');
  if(o.offsetHeight >= max )
   HideAd(o);
  else
   ShowAd(o);
 }
 
}
setTimeout(function(){toogle();funStatus = true;}, 1);
setTimeout(function(){toogle();funStatus = true;}, 5000);
