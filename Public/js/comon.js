$(function(){
//nav begin
	var $nav =$("#Nav");
	var $navEara =$(".NavEara");
	var $curr = $(".NavHover");
	var $drop =$(".subNav");
	$nav.find("li.drop",this).mouseover(function(){
			var index = $(this).index();
			dropMove(this,index);
		});
	$navEara.mouseleave(function(){
		dropClose(); 							  
		});
	$nav.find(".shaohide").mouseover(function(){
		dropClose();
		})
	$navEara.find(".close").click(function(){
			dropClose();							   
		});
	function dropMove(a,index){
		   $.dequeue(this,"fx");
		   $curr.show();
		   $drop.show();
		   $drop.find(".cont").find(".subViewItem:eq("+index+")").show().siblings(".subViewItem").hide();
			$curr.css({
				 left:a.offsetLeft-30
				});
			if($(a).hasClass("otheri")){
				
				$drop.css({
				left:a.offsetLeft-17	  
					  });
				}
			else{	
			
			$drop.css({
				left:a.offsetLeft-170	  
					  });
			}
			
		}
	function dropClose(){
		$curr.hide();
		$drop.hide();
		}
//nav over	
//copySelect仿select
$(".copySelect .btn").live("click",function(){
	$(this).parent().find(".drop").show();
	$(this).parent().css("z-index",999);
});
$(".copySelect .drop p").live("click",function(){
	var txt = $(this).text();
	$(this).parents(".copySelect").find(":text").val(txt);
	$(this).parent(".drop").hide();
});
$(".copySelect ").mouseleave(function(){
	$(this).find(".drop").hide();
	$(this).css("z-index",1);
})

//***Tab 选项卡
$(".tabox").each(function(){
		$(this).find(".tab li:eq(0)").addClass("focus");
		$(this).find(".tabCont .boxs:eq(0)").show();	
		$(this).find(".tab li").click(function(){
			$(this).addClass("focus").siblings().removeClass("focus");
			var index = $(this).index();
			$(this).parent().siblings(".tabCont").find(".boxs:eq("+ index +")").show().siblings(".boxs").hide();
		})
	});
$('a').live("focus", function(){
    $(this).blur();
})

});

//**二级导航及三级导航焦点
function setFocus(n,s){
	if(n){$(".menu li:nth-child("+n+")").addClass("");}
	if(s){$(".subMenu li:nth-child("+s+")").addClass("");}
}
//tab切换调用函数--用于企业文化栏目
function tabSwitch(n,e){
		$(e).parent().addClass("focus").siblings().removeClass("focus");
		$(".tabSwitch").find(".SwitchBox").eq(n).show().siblings(".SwitchBox").hide();
	}
function loadLogin(type){
	$('<div class="dialogLayer" style="position:absolute;top:0;left:0;width:100%;"></div>').appendTo("body")
	var height = $(document).height();
	var scrollHeight= $(window).scrollTop();
	$(".dialogLayer,.loginPopBg").height(height);
		var ajax_page='/ajax/login_'+type+'.php';	
	$(".dialogLayer").load(ajax_page,function(){
		$(".loginPop").css("top",305+scrollHeight);											 
	});
	}
function loginClose(){
	$(".dialogLayer").remove();
	}
/*----shao.我新加的让下拉消失----*/
