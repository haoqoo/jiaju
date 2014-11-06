$(document).ready(function(){
var current=0;//当前index
var selectedIndex=0 //选中的index
var pics=$('#picAnimate img').length;//图片数
var timer;

$('#picAnimate img:gt(0)').hide();//第一张显示,其他隐藏
$('.btn span').eq(0).addClass('btnSelected');//第一个数字按钮选中

//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
$('#picAnimate').hover(
	function(){clearInterval(timer);}
	,
	function(){
	   timer=setInterval(function(){//自动播放
	   current++;
	   selectedIndex=$('.btnSelected').index();
	   if(current==pics)
	   current=0;
	   $('#picAnimate img').eq(selectedIndex).fadeOut(4000).end().eq(current).fadeIn(1000);
	   $('#picAnimate span').eq(current).siblings('span').removeClass('btnSelected').end().addClass('btnSelected');
	  },3000);
	}
);

/*鼠标滑入数字按钮事件*/
$('.btn span').mouseover(function(){
   selectedIndex=$('.btnSelected').index();
   current=$('.btn span').index(this);
   $('#picAnimate img').eq(selectedIndex).fadeOut(4000).end().eq(current).fadeIn(1000);
   $('#picAnimate span').eq(current).siblings('span').removeClass('btnSelected').end().addClass('btnSelected');
});

$('#picAnimate').trigger('mouseout');//页面加载时触发mouseout事件,图片自动播放

});

