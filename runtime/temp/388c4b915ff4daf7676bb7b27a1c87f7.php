<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:66:"D:\phpstudy_pro\WWW\huimin/application/admin\view\index\login.html";i:1494707495;}*/ ?>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
<meta charset="utf-8">
<link type="text/css" href="__CSS__/login.css" rel="stylesheet">
<title>后台登录</title>
</head>
<body>

	<div class="content">
	   	<div class="img">
	          <img src="__IMG__/bg.jpg">
	    </div>	
		
		<div class="login">
	           <div class="tit">管理员登录</div>
			   <div class="frm">
			    <form class="am-form tpl-form-line-form" id="register_form"  action="<?php echo url('login/index'); ?>" >
				   <div class="ipt"><span class="user"><img src="__IMG__/user.jpg"> </span><input type="text" name="username" /> </div>
			       <div class="ipt pwd"><span class="user"><img src="__IMG__/pwd.jpg"> </span>
				   <input type="text" name="password" /> </div>
				   <div class="warn"></div>
				    <div class="btn"> <input type="button"  class="submit" value="登录" name="password" /> </div>
			     </form> 
			   </div>
			   
	   </div>
	   
	</div>	
		<script type="text/javascript" src="__JS__/jquery.min.js" ></script>
		<script type="text/javascript">
		

		
		$(".submit").click(function(){
    		var self = $("form");
    		$.post(self.attr("action"),self.serialize(),success,"json");
    		return false;
         });
    		function success(data){
    			if(data.status){
    				window.location.href =data.url;
    			} else {
				    $(".warn").html(data.msg);
    				//刷新验证码
    				//$(".reloadverify").click();
    			}
    		}
    	
	</script>				
</body>
</html>
