$(function(){
    $(".menu li").hover(function(){
        $('.snav',$(this)).stop().slideDown();
    },function(){
        $('.snav',$(this)).stop().slideUp();
    });
	$(".tab_tit li a").hover(function(){
	$(".tab_tit li a").removeClass("cur");
	$(this).addClass("cur");
	var num=$(".tab_tit li a").index($(this));	
	$(".content .team").css("display","none");
	$(".content .team").eq(num).css("display","block");
})	
})
$(function(){
	 $(".step5 .left3 .tp").hover(function(){$(this).find(".info").animate({"height":"30px"});},function(){$(this).find(".info").animate({"height":"0px"});});
	  $(".step5 .right3 li .tp").hover(function(){$(this).find(".info").animate({"height":"25px"});},function(){$(this).find(".info").animate({"height":"0px"});});
})
