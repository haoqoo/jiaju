<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>百强家具官方网站</title>
<meta http-equiv="X-UA-Compatible" content="edge" />  
<meta name="keywords" content="德国设计，德国工艺，百强家具真的很德国！百强家具是集研发、生产、营销、服务为一体的大型综合性家具企业。以“全心全意为消费者服务”作为企业宗旨，打造中国环保家具高端品牌。" />
<meta name="description" content="德国设计，德国工艺，百强家具真的很德国！百强家具是集研发、生产、营销、服务为一体的大型综合性家具企业。以“全心全意为消费者服务”作为企业宗旨，打造中国环保家具高端品牌。
[!--smalltext--]" />
<script type="text/javascript">

</script>

<script type="text/javascript" src="/jiaju/Public/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="/jiaju/Public/css/ebadusmenu.css" />
<script type="text/javascript" src="/jiaju/Public/js/ebadusmenu.js"></script>
<script type="text/javascript">
//ebadusmenu.definemenu("anchorid", "menuid", "mouseover|click")
ebadusmenu.definemenu("badumenusel", "badumenu1", "mouseover")
ebadusmenu.definemenu("badumenusel1", "badumenu2", "mouseover")
ebadusmenu.definemenu("badumenusel2", "badumenu3", "mouseover")
ebadusmenu.definemenu("badumenusel3", "badumenu4", "mouseover")
ebadusmenu.definemenu("badumenusel4", "badumenu5", "mouseover")
//ebadusmenu.definemenu("badumenusel5", "badumenu6", "mouseover")
//ebadusmenu.definemenu("badumenusel6", "badumenu7", "mouseover")
</script>


<link href="/jiaju/Public/css/wcss.css" rel="stylesheet" type="text/css" />
<link rel='stylesheet' href='/jiaju/Public/css/picAnimate.css' type='text/css' />
<script type='text/javascript' src='/jiaju/Public/js/jquery.min.js'></script>
<script type='text/javascript' src='/jiaju/Public/js/picAnimate.js' charset='utf-8'></script>
<script type='text/javascript' src='/jiaju/Public/js/animate.js'></script>
<script src="/jiaju/Public/js/AC_RunActiveContent.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/jiaju/Public/js/wenhua.js"></script>

<link rel="stylesheet" href="/jiaju/Public/css/global.css" type="text/css">
<link rel="stylesheet" href="/jiaju/Public/css/layoutn.css" type="text/css">
<link rel="stylesheet" href="/jiaju/Public/css/page.css" type="text/css">
<link rel="stylesheet" href="/jiaju/Public/css/style.css" type="text/css">

<script type="text/javascript" src="/jiaju/Public/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/jiaju/Public/js/comon.js"></script>


<!--[if IE 6]>
	<script src="newstyle/js/IE6PNG.js"></script>
	<script type="text/javascript">
		IE6PNG.fix('.PNG');
	</script>
<![endif]--><script type="text/javascript">
$(function(){
	   setFocus(1,2);
});
</script>

<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
    <!--script type="text/javascript" src="/newskin/jquery-lightbox/js/jquery.js"></script-->
    <script type="text/javascript" src="/jiaju/Public/jquery-lightbox/js/jquery.lightbox-0.5.js"></script>
    <link rel="stylesheet" type="text/css" href="/jiaju/Public/jquery-lightbox/css/jquery.lightbox-0.5.css" media="screen" />
    <!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->
    
    <!-- Ativando o jQuery lightBox plugin -->
    <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>
   	<style type="text/css">
	/* jQuery lightBox plugin - Gallery style */
	#gallery {
		
		padding: 0px;
		width: 100%;
	}
	#gallery ul { list-style: none; }
	#gallery ul li { display: inline; }
	#gallery ul img {

	}
	#gallery ul a:hover img {
		border: 5px solid #fff;
		border-width: 5px 5px 20px;
		color: #fff;
	}
	#gallery ul a:hover { color: #fff; }
	</style>
   <script language="JavaScript">
//图片按比例缩放
var flag=false;
function DrawImage(ImgD,iwidth,iheight){
    //参数(图片,允许的宽度,允许的高度)
    var image=new Image();
    image.src=ImgD.src;
    if(image.width>0 && image.height>0){
    flag=true;
    if(image.width/image.height>= iwidth/iheight){
        if(image.width>iwidth){  
        ImgD.width=iwidth;
        ImgD.height=(image.height*iwidth)/image.width;
        }else{
        ImgD.width=image.width;  
        ImgD.height=image.height;
        }
        ImgD.alt=image.width+"×"+image.height;
        }
    else{
        if(image.height>iheight){  
        ImgD.height=iheight;
        ImgD.width=(image.width*iheight)/image.height;        
        }else{
        ImgD.width=image.width;  
        ImgD.height=image.height;
        }
        ImgD.alt=image.width+"×"+image.height;
        }
    }
} 
</script>
<script type="text/javascript">
/* ================================================================ 
This copyright notice must be untouched at all times.
Stay Put!
Copyright (c) 2009 Stu Nicholls - stunicholls.com - all rights reserved.
=================================================================== */
/* <![CDATA[ */
onload = function() {

startPos = $("#semiFixed").position().top;
divHeight = $("#semiFixed").outerHeight();
$("#placeHolder").css("height", divHeight + "px")

$(window).scroll(function (e) {
scrTop = $(window).scrollTop();


    if ((startPos-5) < scrTop) {
        if ($.browser.msie && $.browser.version <= 6 ) {
        topPos = startPos + (scrTop - startPos) +5;
        $("#semiFixed")    .css("position", "absolute")
                        .css("top", topPos +"px")
                        .css('zIndex', '500')
        }
        else {
        $("#semiFixed")    .css("position", "fixed")
                        .css("top", "0px")
                        .css("zIndex", "500")
        }
    }
	
    else {
        $("#semiFixed")    .css("position", "static")
    }

});

}

/* ]]> */
</script>
<base target="_blank" />
<link rel="stylesheet" type="text/css" href="/flash523/css/lrtk.css">
<!--script type="text/javascript" src="/flash523/js/jquery-1.6.4.min.js"></script-->
<script type="text/javascript" src="/flash523/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="/flash523/js/cufon-yui.js"></script>
<script type="text/javascript" src="/flash523/js/scripts.js"></script>
<script type="text/javascript" src="/flash523/js/custom.js"></script>
<script type="text/javascript" name="baidu-tc-cerfication" src="http://apps.bdimg.com/cloudaapi/lightapp.js#9fbeb516a496e1ef15299b4aa9ded9e0"></script>
<script type="text/javascript">window.bd && bd._qdc && bd._qdc.init({app_id: 'b4496f35304712f4bbea6ae5'});</script>
</head>
<body>
<a name="top">
<div class="header">
	<div class="headerleft"><a href="/" target="_top"><img src="/jiaju/Public/images/logo.png" class="logo"/></a></div>
  <div class="headerRight">
   
  <div class="Msearch language">
  <a href="http://float2006.tq.cn/static.jsp?version=vip&admiuin=9609567&ltype=0&iscallback=1&is_message_sms=0&is_send_mail=0&uin=9609567" target=_blank><img src="/jiaju/Public/images/topqq.png" class="Mtopqq"/></a>
   <form action="/e/search/index.php" method="post" name="search_news" id="search_news">
   <input type="hidden" name="show" value="title"  /><input type="hidden" name="classid" value="19"  />
    <div class="Eara01 cf ">
     <input type="text" value="" onfocus="if(this.value=='')this.value=''" class="input" name="keyboard">
     <input type="submit" value="" class="btn1">
    </div>
   </form>
   <span id="user_status">
     服务电话：400-660-6800
   <a href="http://weibo.com/bekingbq" target="_blank">官方微博</a> </span>   </div>

</div>
	
</div>
</div>
<div id="headerb">
<div class="nav">

     <div class="Tnav_1eft"><a href="/"  target="_top"></a></div>
  <div class="Tnav_right">
   <div class=" Tnav_right_pic"></div>
   <div class="Tnav_right1"> <ul>
  <li><a href="/e/action/ListInfo/?classid=19" target="_top"  id="badumenusel">所有产品</a></li>
                <li><a href="#" target="_top"  id="badumenusel1">家具类别</a></li>
                <li><a href="/e/action/ShowInfo.php?classid=21&id=18" target="_top"  id="badumenusel2">特色服务</a></li>
                <li><a href="/e/action/ListInfo.php?&classid=43&ph=1&szd=北京" target="_top"  id="badumenusel3">销售网络</a></li>              
               
                <li><a href="/e/action/ShowInfo.php?classid=24&id=21" target="_top"  id="badumenusel4">关于百强</a></li>
                 <li><a href="/e/action/ShowInfo.php?classid=23&id=20" target="_top"  id="badumenusel5">会员服务</a></li>
                <li><a href="/e/action/ShowInfo.php?classid=24&id=24" target="_top"  id="badumenusel6">联系我们</a></li>
       
    </ul></div>
      <div class=" Tnav_right_end"></div>
      <!--a href="#" class="account">登录</a-->
      <!--a href="/e/action/ShowInfo.php?classid=23&id=20"  class="account">注册</a-->
    </div>
</div>
 

</div>

<div id="badumenu1" class="cssbadumenu">
  <div class="jjt">
  </div>
  <div class="column">
   <ul>
    <li><a href="/e/action/ListInfo/?classid=20" target="_top">美仑·漫步</a></li>

 <li><a href="/e/action/ListInfo/?classid=29" target="_top">欧福莱</a></li>

 <li><a href="/e/action/ListInfo/?classid=30" target="_top">黑森林</a></li>

 <li><a href="/e/action/ListInfo/?classid=31" target="_top">新罗马</a></li>

 <li><a href="/e/action/ListInfo/?classid=32" target="_top">哈利木屋</a></li>

 <li><a href="/e/action/ListInfo/?classid=33" target="_top">进口高端</a></li>

 <li><a href="/e/action/ListInfo/?classid=34" target="_top">饰品</a></li>

 <li><a href="/e/action/ListInfo.php?&classid=19&ph=1&xptj=新品推荐" target="_top">新品推荐</a></li>

 <li><a href="/e/action/ListInfo.php?&classid=19&ph=1&mxcp=明星产品" target="_top">明星产品</a></li>

    </ul>
  </div>
</div>

<div id="badumenu2" class="cssbadumenu">
  <div class="jjta"></div>
  <div class="column">
    <h3 class="navt"><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=卧室" target="_top">卧室</a></h3>
    <ul>
    
<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%8D%A7%E5%AE%A4&sleibie=%E5%BA%8A">床</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%8D%A7%E5%AE%A4&sleibie=%E8%A1%A3%E6%9F%9C">衣柜</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%8D%A7%E5%AE%A4&sleibie=%E5%B1%89%E6%9F%9C">屉柜</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%8D%A7%E5%AE%A4&sleibie=%E5%BA%8A%E5%9E%AB">床垫</a></li>
    </ul>
  </div>
  <div class="column">

    <h3 class="navt">

      <a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=客厅" target="_top">
客厅</a>

    </h3>

    <ul>



  
<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%AE%A2%E5%8E%85&sleibie=%E8%8C%B6%E5%87%A0">茶几</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%AE%A2%E5%8E%85&sleibie=%E6%B2%99%E5%8F%91">沙发</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%AE%A2%E5%8E%85&sleibie=%E7%94%B5%E8%A7%86%E6%9F%9C">电视柜</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E5%AE%A2%E5%8E%85&sleibie=%E9%A5%B0%E5%93%81%E6%9F%9C">饰品柜</a></li>

    </ul>

  </div>

  <div class="column">

    <h3 class="navt">

      <a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=餐厅" target="_top">餐厅</a>

    </h3>

    <ul>

     
<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E9%A4%90%E5%8E%85&sleibie=%E9%A4%90%E6%A1%8C">餐桌</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E9%A4%90%E5%8E%85&sleibie=%E9%A4%90%E6%A4%85">餐椅</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E9%A4%90%E5%8E%85&sleibie=%E9%85%92%E6%9F%9C">酒柜</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E9%A4%90%E5%8E%85&sleibie=%E9%85%8D%E9%A4%90%E6%9F%9C">配餐柜</a></li>
    </ul>

  </div>

  <div class="column">

    <h3 class="navt">

      <a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=书房" target="_top">书房</a>

        

    </h3>

    <ul>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E4%B9%A6%E6%88%BF&sleibie=%E5%AD%97%E5%8F%B0">字台</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E4%B9%A6%E6%88%BF&sleibie=%E4%B9%A6%E6%9F%9C">书柜</a></li>

<li><a href="/e/action/ListInfo.php?&classid=19&ph=1&leibie=%E4%B9%A6%E6%88%BF&sleibie=%E6%A4%85%E5%AD%90">椅子</a></li>
    </ul>

  </div>
</div>
<div id="badumenu3" class="cssbadumenu">
  <div class="jjtb">
  </div>
  <div class="column">
<ul>
 
 <li><a href="/e/action/ShowInfo.php?classid=21&id=18" target="_top">免费设计咨询</a></li>

 <li><a href="/e/action/ShowInfo.php?classid=21&id=25" target="_top">非标测量定制</a></li>

 <li><a href="/e/action/ShowInfo.php?classid=21&id=26" target="_top">置家设计出图</a></li>

 <li><a href="/e/action/ListInfo/?classid=42" target="_top">经典案例</a></li>

 <li><a href="/e/action/ListInfo/?classid=45" target="_top">生活方式</a></li>
    </ul>

  </div>
</div>

<div id="badumenu4" class="cssbadumenu">

  <div class="jjtc">

  </div>

  <div class="column">

  

  <ul>
    
 <li><a href="/e/action/ListInfo.php?&classid=43&ph=1&szd=%E5%8C%97%E4%BA%AC" target="_top">全国门店</a></li>

 <li><a href="/e/action/ShowInfo.php?classid=22&id=29" target="_top">招商合作</a></li>

    </ul>

  </div>

  

  

</div>

<div id="badumenu5" class="cssbadumenu">

  <div class="jjtd">

  </div>

  <div class="column">

   

    <ul>
      <li><a href="/e/action/ListInfo/?classid=48">活动信息</a></li>
      <li><a href="/e/action/ListInfo/?classid=41">新闻中心</a></li>
 	  <li><a href="/e/action/ShowInfo.php?classid=24&amp;id=21">关于百强</a></li>
      <li><a href="/e/action/ListInfo/?classid=47">品牌文化</a></li>
      <li><a href="/e/action/ShowInfo.php?classid=24&amp;id=23">加入我们</a></li>
    </ul>

  </div>
  

</div>

<div id="badumenu6" class="cssbadumenu">

<div class="jjtg">

  </div>

  <div class="column" style="width:170px;">
   <ul>
  
  
 <li><a href="/e/action/ShowInfo.php?classid=23&id=20" target="_top">加入会员</a></li>
 
    </ul>

  </div>
</div>

<style>
#Marquee{ height:22px; overflow:hidden; width:500px; float:left;}
#Marquee div{height:22px; float:left; text-align:left;}
</style>
<div class="lujing">
<span class="font_a1a1a1"> <div style="width:60px; float:left;">热门消息:</div>
<div id="Marquee">
<div style="width:400px;"><a href="/e/action/ShowInfo.php?classid=41&id=98" target="_blank"><font color="#bf0000">喜大普奔！百强会员赚现金红榜第二葩</font></a></div>
<div style="width:400px;"><a href="/e/action/ShowInfo.php?classid=41&id=96" target="_blank"><font color="#bf0000">牵手"梦中情人",上百强微信小店就购啦！</font></a></div>
<div style="width:400px;"><a href="/e/action/ShowInfo.php?classid=41&id=90" target="_blank"><font color="#bf0000">访何弘毅：视设计为灵魂，视质量为生命</font></a></div>
</div>
<script>
var Mar = document.getElementById("Marquee");
var child_div=Mar.getElementsByTagName("div")
var picH = 20;//移动高度
var scrollstep=3;//移动步幅,越大越快
var scrolltime=20;//移动频度(毫秒)越大越慢
var stoptime=3000;//间断时间(毫秒)
var tmpH = 0;
Mar.innerHTML += Mar.innerHTML;
function start(){
	if(tmpH < picH){
		tmpH += scrollstep;
		if(tmpH > picH )tmpH = picH ;
		Mar.scrollTop = tmpH;
		setTimeout(start,scrolltime);
	}else{
		tmpH = 0;
		Mar.appendChild(child_div[0]);
		Mar.scrollTop = 0;
		setTimeout(start,stoptime);
	}
}
onload=function(){setTimeout(start,stoptime)};
</script></span></div>
<div class="hPageBody">
	<div class="banner">
   <div class="clear" id="slider-bg">
    <div class="full-width-wrapper" id="slider-frame">
        <div class="fixed-width-wrapper maxx-theme" id="slider-wrapper">
        
      
    <script type="text/javascript" src="/m/flash0602/scroll.js"></script>
<style type="text/css">

.scroll{width:1056px;height:453px;margin:5px auto 0 auto; position:relative;overflow:hidden;}
.mod_01{float:left;width:1056px;}
.mod_01 img{display:block;width:1056px;height:453px;}
.dotModule_new{ left:500px;height:15px;line-height:6px;-webkit-border-radius:11px;background:rgba(45,45,45,0.5);position:absolute;bottom:15px;z-index:11;}
#slide_01_dot{text-align:center;margin:3px 0 0 0;}
#slide_01_dot span{display:inline-block;margin:0 3px;width:9px;height:9px;vertical-align:middle;background:#f7f7f7;-webkit-border-radius:5px; cursor: pointer;}
#slide_01_dot .selected{background:#66ff33;}
</style>

<div class="scroll">
	<div class="slide_01" id="slide_01">

<div class="mod_01"><a href="http://www.baiqiang.com.cn/e/action/ShowInfo.php?classid=41&id=96" target="_blank"><img src="http://www.baiqiang.com.cn/d/file/indexflash/2014-09-17/b7a7a0d3dd99e7bc571b7040b549b9c0.jpg" width="1056" height="453" ></a></div>

<div class="mod_01"><a href="http://www.baiqiang.com.cn/e/action/ShowInfo.php?classid=48&id=97" target="_blank"><img src="http://www.baiqiang.com.cn/d/file/indexflash/2014-09-23/1435d9b554c21917e57d1e9349775147.jpg" width="1056" height="453" ></a></div>

<div class="mod_01"><a href="http://www.baiqiang.com.cn/e/action/ShowInfo.php?classid=45&id=99" target="_blank"><img src="http://www.baiqiang.com.cn/d/file/indexflash/2014-10-17/38d87580739358090f14f64950bae727.jpg" width="1056" height="453" ></a></div>

<div class="mod_01"><a href="http://www.baiqiang.com.cn/e/action/ShowInfo.php?classid=62&id=63#baoming" target="_blank"><img src="http://www.baiqiang.com.cn/d/file/indexflash/2014-10-16/f07094de309dda8bdf48094de377e630.jpg" width="1056" height="453" ></a></div>

<div class="mod_01"><a href="http://www.baiqiang.com.cn/e/action/ListInfo/?classid=31" target="_blank"><img src="http://www.baiqiang.com.cn/d/file/indexflash/2014-05-19/e0c89b1b89c039c6c800cd86a7748def.jpg" width="1056" height="453" ></a></div>

 </div>
	<div class="dotModule_new">
		<div id="slide_01_dot"></div>
	</div>
</div>
  <script type="text/javascript">
if(document.getElementById("slide_01")){
	var slide_01 = new ScrollPic();
	slide_01.scrollContId   = "slide_01"; //内容容器ID
	slide_01.dotListId      = "slide_01_dot";//点列表ID
	slide_01.dotOnClassName = "selected";
	slide_01.arrLeftId      = "sl_left"; //左箭头ID
	slide_01.arrRightId     = "sl_right";//右箭头ID
	slide_01.frameWidth     = 1056;
	slide_01.pageWidth      = 1056;
	slide_01.upright        = false;
	slide_01.speed          = 10;
	slide_01.space          = 30; 
	slide_01.initialize(); //初始化
}
</script>	
  
     
        
        </div>
    </div>
</div>
</div>

</div>
	<div class="hmainbody">
	<div class="hnews">
			<div class="title"></div>
			
<table id="inhuod"><tr><td><a href="/e/action/ListInfo/?classid=45"><img src="/d/file/indexpp/2014-05-16/cee814c8b7b7eaf35fda34e7a0333387.jpg" width="258" height="167"></a></td><td><a href="/e/action/ListInfo/?classid=42"><img src="/d/file/indexpp/2014-05-16/5bf10a5a01f3f33a4a9a7d7c065b8b10.jpg" width="258" height="167"></a></td><td><a href="/e/action/ListInfo/?classid=48"><img src="/d/file/indexpp/2014-05-16/216b96ee9ab349b70a6896867802df03.jpg" width="258" height="167"></a></td><td><a href="/e/action/ListInfo/?classid=47"><img src="/d/file/indexpp/2014-05-16/9979cbc01cf78d5e19b3629bf868d6d2.jpg" width="258" height="167"></a></td></tr></table>
		</div>
 	</div>
<div class="contentnew">
<div class="mtitle">
<table width="100%" class="mtitletable"><tr><td><h1>产品展示</h1></td><td><div style="float:right;font-size:14px;"><strong>真的很德国</strong></div></td></tr></table>
</div>


                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=20">美仑·漫步</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=20"><img src="http://www.baiqiang.com.cn/d/file/p/2014-10-16/619356874288aab285233a5bf62c156b.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=20&id=411"><img src="http://www.baiqiang.com.cn/d/file/xilie/mlmb/2014-10-14/5df66856553ce4a9278d8fe3efccacea.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=20&id=411">美仑·漫步-沙发</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=20&id=410"><img src="http://www.baiqiang.com.cn/d/file/xilie/mlmb/2014-10-14/06bc73e5b9bd4ebbd3f967fa5fa901b2.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=20&id=410">美仑·漫步-休闲</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">简美风格的居室优雅与舒适并存，散发着悠扬的怀旧气息。</div></td>
  </tr>
</table>             

                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=29">欧福莱</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=29"><img src="/d/file/p/2014-05-08/ad2f2842063f57dc09e71effb27f85e2.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=29&id=316"><img src="/d/file/xilie/hsl/2014-06-06/2296f301c2c7e4d42c519005b9bf0f65.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=29&id=316">欧福莱-床9A2-09a</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=29&id=318"><img src="/d/file/xilie/hsl/2014-06-06/4ffe928d40264f31ee010b9bfcd7cedc.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=29&id=318">欧福莱-床3A2-10a</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">设计风格简洁实用，融入了欧洲流行元素，色彩清新、时尚。</div></td>
  </tr>
</table>             

                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=30">黑森林</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=30"><img src="/d/file/p/2014-05-08/5f84c2eaad30f9deb11f365c07518d2c.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=30&id=374"><img src="http://www.baiqiang.com.cn/d/file/xilie/jkgd/2014-07-03/4251dfdf482c32109dfe1261a41abbd3.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=30&id=374">黑森林-字台9SB2-</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=30&id=391"><img src="http://www.baiqiang.com.cn/d/file/xilie/jkgd/2014-07-04/3a9d4762a47b8fe12df245b799e122c0.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=30&id=391">黑森林-木面椅子9</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">实木家具精致与厚重感的完美结合，打造高品质家居生活。</div></td>
  </tr>
</table>             

                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=31">新罗马</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=31"><img src="/d/file/p/2014-05-08/62f0a9e5f97d69c40bc253ab6cb3810a.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=31&id=225"><img src="/d/file/xilie/xlm/2014-05-21/f31730b89730d121acbce3c36fc0c900.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=31&id=225">新罗马-椅子NQ-03</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=31&id=227"><img src="/d/file/xilie/xlm/2014-05-21/8176f978f8e02b003d131805149d75d5.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=31&id=227">新罗马-床NA2-01a</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">理性与浪漫的结合，完美演绎新古典主义的沉静韵味。</div></td>
  </tr>
</table>             

                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=32">哈利木屋</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=32"><img src="http://www.baiqiang.com.cn/d/file/p/2014-10-16/75fdf5d2e25e4fd8a52004897c2c4fb3.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=32&id=339"><img src="http://www.baiqiang.com.cn/d/file/xilie/hlmw/2014-06-17/5438827264202bbe4d6394023ba45b82.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=32&id=339">哈利木屋-木马HL2</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=32&id=338"><img src="http://www.baiqiang.com.cn/d/file/xilie/hlmw/2014-06-17/42683ed5fb2381040c7e85f75ab44620.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=32&id=338">哈利木屋-床HL3-2</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">关爱青少年个性发展，建立健康、自由、宽松的成长环境。</div></td>
  </tr>
</table>             

                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=33">进口高端</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=33"><img src="/d/file/p/2014-05-08/6e45eafe0fad7175fcf94837d50aaea8.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=33&id=115"><img src="/d/file/xilie/ofl/2014-05-15/f3f3264d2bfc46dcbb84d03e05a14d3c.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=33&id=115">Meroni梅罗妮-梳</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=33&id=114"><img src="/d/file/xilie/ofl/2014-05-15/a1551e64fa3c04d034578e7940fe5d73.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=33&id=114">Meroni梅罗妮-梳</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">或奢华优雅；或简约时尚；更有经典古典款式供您挑选。</div></td>
  </tr>
</table>             

                  
                <table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo/?classid=34">饰品</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo/?classid=34"><img src="/d/file/p/2014-05-22/069461cccee1615396ed6c1546e49851.jpg"></a></td>
    <td rowspan="2" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=34&id=117"><img src="/d/file/xilie/sp/2014-05-15/a184a14bdca255205ee84215951a60aa.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=34&id=117">ASA白色系花瓶</a></td>
      </tr>
    </table>
                            <li></li>
                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=34&id=129"><img src="/d/file/xilie/sp/2014-05-15/67127f9be6eff7d167f83e22f06029ed.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=34&id=129">ASA神秘黑花器</a></td>
      </tr>
    </table>
                            <li></li>
                              </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">彩色斑斓、恬静简洁，温馨的家离不开饰品的点睛之笔。</div></td>
  </tr>
</table>             
<!--新品推荐-->
<table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo.php?&classid=19&ph=1&xptj=新品推荐">新品推荐</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo.php?&classid=19&ph=1&xptj=新品推荐"><img src="http://www.baiqiang.com.cn/d/file/p/2014-09-01/7926bd3cb148e5f57eb26488ede90110.jpg"></a></td>
    <td rowspan="2" valign="top">
                         <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=20&id=403"><img src="http://www.baiqiang.com.cn/d/file/xilie/mlmb/2014-10-14/08b4715f3d3edceedc6de157397d2375.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=20&id=403" target="_blank">美仑·漫步-床</a></td>
      </tr>
    </table>
                                     <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=20&id=159"><img src="/d/file/xilie/mlmb/2014-05-15/f31f4680b6bcdc4b7194e15a3bbdf37c.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=20&id=159" target="_blank">美仑·漫步-椅子</a></td>
      </tr>
    </table>
                       
    </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">天然环保，呵护脊椎，打造优质睡眠环境，提升睡眠质量！</div></td>
  </tr>
</table>
<!--明星产品-->
<table width="306" border="0" cellspacing="0" cellpadding="0" class="inlistp">
  <tr>
    <td colspan="2"><div class="inlistptitle"><a href="/e/action/ListInfo.php?&classid=19&ph=1&mxcp=明星产品">明星产品</a></div></td>
  </tr>
  <tr>
    <td height="53" align="center" bgcolor="#f6f6f6" class="inlistpimg1"><a href="/e/action/ListInfo.php?&classid=19&ph=1&mxcp=明星产品"><img src="/d/file/p/2014-05-08/cf6df4ab48f9ca43bd789d0121904cf2.jpg"></a></td>
    <td rowspan="2" valign="top">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=30&id=391"><img src="http://www.baiqiang.com.cn/d/file/xilie/jkgd/2014-07-04/3a9d4762a47b8fe12df245b799e122c0.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=30&id=391" target="_blank">黑森林-木面椅子9SQ-03d</a></td>
      </tr>
    </table>
                                     <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inlistpcp2t">
        <tr>
       <td class="inlistpimg2"><a href="/e/action/ShowInfo.php?classid=29&id=316"><img src="/d/file/xilie/hsl/2014-06-06/2296f301c2c7e4d42c519005b9bf0f65.jpg"></a></td>
      </tr>
      <tr>
          <td align="center" class="inlistptitle2"><a href="/e/action/ShowInfo.php?classid=29&id=316" target="_blank">欧福莱-床9A2-09a</a></td>
      </tr>
    </table>
                
    </td>
  </tr>
  <tr>
    <td bgcolor="#f6f6f6"><div class="inlistpinfo1">好评最多；销量最多。走过路过不要错过，点这里就对了！</div></td>
  </tr>
</table>
</div>
<div class="contentnew1"><div class="title"><h1>相关服务</h1><h2></h2></div>

<li><a href="http://www.baiqiang.com.cn/e/action/ShowInfo.php?classid=22&id=29"><img  src="/d/file/indexservice/2014-04-19/61169992649207ae1ac43efab3c309a6.png"></a></li>

<li><a href="http://www.baiqiang.com.cn/e/action/ShowInfo.php?classid=23&id=20"><img  src="http://www.baiqiang.com.cn/d/file/indexservice/2014-06-17/50cc57977844536b6ffb3641dabee5f8.jpg"></a></li>

<li><a href="/e/action/ListInfo/?classid=43"><img  src="/d/file/indexservice/2014-04-19/0e26479bee96013bbaa29f9480244e65.png"></a></li>
</div>
<div class="footerWrap">
	<div class="footer cf">
    <div class="left"><a href="/"><img src="/jiaju/Public/images/footlogo.png" alt=""></a></div>
    	<div class="left" style="padding:15px 0 0 15px;">
         <table width="100%" border="0" cellspacing="0" cellpadding="0" style="width:520px; float:left;">
          <tr><td colspan="2"> <p class="flink"><span class="jiathis_txt"><a href="/e/action/ListInfo.php?&classid=43&ph=1&szd=北京">销售网络</a><span>/</span><a href="/e/action/ShowInfo.php?classid=24&id=24">联系我们</a><span>/</span><a href="/e/action/ShowInfo.php?classid=22&id=29">招商合作</a><span>/</span><a href="/e/action/ShowInfo.php?classid=24&id=23">加入我们</a><span>/</span><a href="/fl.html">法律声明</a></p></td></tr>
  <tr>
    <td width="12%" align="left"><span class="left">分享到：</span></td>
    <td width="88%" align="left"><div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script></td>
  </tr>
</table>
         
        </div>
         <div class="fright"><a href="http://float2006.tq.cn/static.jsp?version=vip&admiuin=9609567&ltype=0&iscallback=1&is_message_sms=0&is_send_mail=0&uin=9609567" target="_blank"><img src="/jiaju/Public/images/footqq.png" alt=""></a></div
       
><div style="display:none;"><script src="http://s4.cnzz.com/z_stat.php?id=1000463213&web_id=1000463213" language="JavaScript"></script></div>
    </div>
    <div class="fotb">Copyright © 2014 BEKING ALL Rights Reserved. 京ICP备13031384号-1　</div><script type="text/javascript" src="/gototop/js/scrolltopcontrol.js"></script>

</div>
</body>
</html>