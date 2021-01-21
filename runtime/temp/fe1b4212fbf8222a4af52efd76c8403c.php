<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:85:"/home/release/webserver/php/project/huimin/application/admin/view/config/systems.html";i:1611123241;s:84:"/home/release/webserver/php/project/huimin/application/admin/view/public/header.html";i:1611123245;s:84:"/home/release/webserver/php/project/huimin/application/admin/view/public/dialog.html";i:1611123244;s:83:"/home/release/webserver/php/project/huimin/application/admin/view/public/color.html";i:1611123244;s:84:"/home/release/webserver/php/project/huimin/application/admin/view/public/footer.html";i:1611123245;}*/ ?>
 <!-- 头部 -->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?>|慧敏职业学校后台管理</title>
    	<link rel="stylesheet" href="__COMMON__/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="__CSS__/style.css" />

	<script type="text/javascript" src="__COMMON__/jquery.min.js" ></script>

	<!-- 自定义弹窗-->
    <script>
	var dialog_style ="<?php echo C('DIALOG_STYLE'); ?>";
	var index_url="<?php echo url('index/index'); ?>";
	$(".logo").click(function(){
	   location.href=index_url;
	});
</script>
  <!--引入改进型easydialog弹窗 -->	
<?php if(C('DIALOG_STYLE') == '1'): ?>	
	<link rel="stylesheet" href="__CSS__/global.css">
	<link rel="stylesheet" href="__CSS__/animate.css">
	<link rel="stylesheet" href="__CSS__/dialog.css">
	<style>
		.div-testDialog{
			width: 500px;
			height: auto;
			margin: 50px auto;
		}

		.div-testDialog button{
			margin:  10px;
		}
		@media screen and ( max-width: 460px){
			.div-testDialog{
				width: 90%;
			}
		}
   </style>
<script src="__JS__/dialog.js"></script>	
<?php endif; ?>
	<!-- 换肤功能 -->
	
<style>
.top{
	width: 100%;
	height: 50px;
	color: #ffffff;
    background-color: <?php echo C('COLOR'); ?>;padding:2px 0;
}
a{color: <?php echo C('COLOR'); ?>;text-decoration:none;cursor: pointer;}
.nav_tree_list .menue .c_menue_item a{
	text-decoration: none;
	color:#000000;
}
.main .fa{color: <?php echo C('COLOR'); ?>;}
.nav_tree_list .menue .c_menue_item.checked{
	color: <?php echo C('btn'); ?>;	background-color:#FFF;
}
.nav_tree_list .menue .c_menue_item:hover a{
	color: <?php echo C('COLOR'); ?>;
}
tr:hover{ background-color:#f9f9f9;}
.nav_tree_list .menue .c_menue_item.checked a{
  color: <?php echo C('COLOR'); ?>;
 }
 .nav_tree_list .menue .c_menue_item.checked a:hover{
  color:<?php echo C('COLOR'); ?>;
 }
.nav_tree_list .menue .c_menue_item:hover{
	color:<?php echo C('COLOR'); ?>;
	background-color:#FFF;
	
}
.down{background-color:#f2f2f2;}
.p_menue{
		background-color:#F2F2F2;;
		color:#000;
}
.alert-success {
    background-color: #dff0d8;
    border-color: #d6e9c6;
    color: #3c763d;
}
.alert {
    padding: 10px 0;
    border: 1px solid transparent;
    border-radius: 4px;margin:20px 0;
}
.edit_tab{
		background-color:;
		border-bottom:1px solid #ccc;z-index:1;
}
.edit_tab .tab_option.on{
		background-color: ;
		color:#000;
		border-left:1px solid #f2f2f2;
		border-right:1px solid #f2f2f2;
		border-top:2px solid <?php echo C('COLOR'); ?>;
		border-bottom:1px solid #fff;z-index:2;
}
.edit_tab .tab_option.on a{
	
	color: #000;
}
.page .active{
	border:1px solid <?php echo C('COLOR'); ?>;
	background-color:<?php echo C('COLOR'); ?>;
	color: #ffffff;
}
.list_opr .edit_btn{

	color:bule;
}
.list_opr .del_btn{
	
	color:#dd514c;
}
.list_table tr th {
    color: #000;
    background-color:#F2F2F2;height:30px;
}
.article_table .article_table_header{
      color: #000;
    background-color:#fdfdfd;height:36px;
}

.edit_title{
	color:#000;
   
}
.edit_title .title{
	
   display:inline-block;
   font-size: 20px;
    
}

.upload_btn_group .upload_btn{
	background-color: <?php echo C('COLOR'); ?>;
}
.edit_left .add{
	border:1px solid <?php echo C('COLOR'); ?>;	
    color: #FFF;
	background-color:<?php echo C('COLOR'); ?>;	
}
.edit_left .add:hover{
	background-color:<?php echo C('COLOR'); ?>;	
    color: #fff;
}
.edit_left .delete{
		border:1px solid <?php echo C('BTN'); ?>;	
		color: #FFF;
		background-color:<?php echo C('BTN'); ?>;	
}

.confirm_btn{
	background-color:#10926B;
	color:#fff;
}
.confirm_btn:hover{
	background-color:#10926B;
}
.content .fa{color:<?php echo C('COLOR'); ?>}
.cancel_btn{
	background-color:<?php echo C('BTN'); ?>;
	color:#000;
	border:2px solid #eee;color:#fff;
}
.cancel_btn:hover{
    background-color: <?php echo C('BTN'); ?>;
}
.error{
	background-color:#dd514c;
}
.search{
    padding:5px 0;
    border-top: 0px solid #F2f2f2;
	
	
}
.search input,.search select{
    border: 1px solid #f2f2f2;		
	height: 30px;
}
.search .end{
   margin-right:0px;
 }
 .search .search_btn{
	color:#111;
	width:55px;   
	
	display:inline-block;
	cursor:pointer;
	
	background-color: #fff;
}

</style>
	

	</head>
	<body>
		<div class="top">
			<div class="logo"></div>
			<ul class="main_links">
		           	<li><a href="<?php echo url('index/index'); ?>" >首页 </a></li> <?php if(isset($group)): ?>    
                        <!-- 欢迎语 -->
						   <?php if(is_array($group) || $group instanceof \think\Collection || $group instanceof \think\Paginator): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <li><a href="<?php echo get_group_url($vo['id']); ?>"><?php echo (isset($vo['title']) && ($vo['title'] !== '')?$vo['title']:""); ?> </a>
							
							</li>
					<?php endforeach; endif; else: echo "" ;endif; ?>  
							
			  <li><a href="<?php echo site_url(); ?>" target="_blank">前台</a></li>
                <?php endif; ?>
			</ul>	
			<div class="user_info">
			
				<a href="<?php echo url('login/logout'); ?>" id="user_icon"><i class="fa fa-user"></i></a>
				
			</div>
			<div class="down_menu" id="down_menu">
				<ul>
				<li><a href="<?php echo url('ucenter/edit',array('id'=>is_login())); ?>">修改资料</a></li>
				<li><a href="<?php echo url('login/logout'); ?>">退出登录</a></li>
				</ul>
			</div>
		<script>	
		var oDiv3 = document.getElementById('user_icon');
		var oDiv4 = document.getElementById('down_menu');
		var timer2 = null;
		oDiv3.onmouseover = oDiv4.onmouseover = function (){	
			oDiv4.style.display = 'block';
			clearTimeout(timer2);
		}
		oDiv3.onmouseout = oDiv4.onmouseout = function (){
			//寮€瀹氭椂鍣�
			timer2 = setTimeout(function () { 
			oDiv4.style.display = 'none'; },300);
		}
	</script>	

		</div>
	    <div class="main">
			<div class="nav_tree">
				<div class="innerUl">

		         </div>
	    </div>
		
	  <script type="text/javascript" src="__JS__/proTree.js" ></script>
	     <script type="text/javascript">
		   $(".innerUl").ProTree({
			arr:<?php echo $sidebar; ?>,
			simIcon: "fa fa-file-o",//单个标题字体图标 不传默认glyphicon-file
			mouIconOpen: "fa fa-folder-open-o",//含多个标题的打开字体图标  不传默认glyphicon-folder-open
			mouIconClose:"fa fa-folder-o",//含多个标题的关闭的字体图标  不传默认glyphicon-folder-close
			callback: function(id,name,url) {
				window.location.href =url;
			}

		})
	</script>

		


<!-- 头部 -->
  <script type="text/javascript" src="__COMMON__/jquery.colorpicker.js"></script>	
			<div class="content">
			<div class="tips_msg none"><span class="tips">保存成功</span><span class="close_tips"></span></div>
				<div class="edit_title"><i class="fa fa-<?php echo (isset($now['font']) && ($now['font'] !== '')?$now['font']:''); ?>"></i><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?></div>
				<div class="edit_box">
				
					<div class="edit_tab">
				<?php if(is_array($groups) || $groups instanceof \think\Collection || $groups instanceof \think\Paginator): if( count($groups)==0 ) : echo "" ;else: foreach($groups as $key=>$vo): ?>
			      <div class="tab_option <?php if($type == $key): ?>on<?php endif; ?>"><a href="<?php echo U('?group='.$key); ?>"><?php echo $vo; ?>配置</a></div>
		     	<?php endforeach; endif; else: echo "" ;endif; ?>
					</div>
					<div class="edit_content">
							 <form class="group-form"  action="<?php echo url(''); ?>" method="post">
							 <div class="edit_content_tab">
						 	<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$config): $mod = ($i % 2 );++$i;switch($config['type']): case "string": ?>
						    <div class="input_title"><?php echo $config['title']; if(!(empty($config['remark']) || (($config['remark'] instanceof \think\Collection || $config['remark'] instanceof \think\Paginator ) && $config['remark']->isEmpty()))): ?><span>(<?php echo $config['remark']; ?>)</span><?php endif; ?></div>
							<input type="text" name="config[<?php echo $config['name']; ?>]" class="input_box" value="<?php echo $config['value']; ?>"/>
							<?php break; case "textarea": ?>
						    <div class="input_title"><?php echo $config['title']; if(!(empty($config['remark']) || (($config['remark'] instanceof \think\Collection || $config['remark'] instanceof \think\Paginator ) && $config['remark']->isEmpty()))): ?><span>(<?php echo $config['remark']; ?>)</span><?php endif; ?></div>
							<textarea name="config[<?php echo $config['name']; ?>]"/><?php echo $config['value']; ?></textarea>
							<?php break; case "radio": ?>
						    <div class="input_title"><?php echo $config['title']; if(!(empty($config['remark']) || (($config['remark'] instanceof \think\Collection || $config['remark'] instanceof \think\Paginator ) && $config['remark']->isEmpty()))): ?><span>(<?php echo $config['remark']; ?>)</span><?php endif; ?></div>
							<input type="radio" name="config[<?php echo $config['name']; ?>]" value="<?php echo $config['value']; ?>"/>
							<?php break; case "select": ?>
						    <div class="input_title"><?php echo $config['title']; if(!(empty($config['remark']) || (($config['remark'] instanceof \think\Collection || $config['remark'] instanceof \think\Paginator ) && $config['remark']->isEmpty()))): ?><span>(<?php echo $config['remark']; ?>)</span><?php endif; ?></div>
							<select name="config[<?php echo $config['name']; ?>]">
				              <?php $_result=parse_config_attr($config['extra']);if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
					           <option value="<?php echo $key; ?>" <?php if($config['value'] == $key): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
				           <?php endforeach; endif; else: echo "" ;endif; ?>
			              </select>
							
							<?php break; case "color": ?>
						    <div class="input_title"><?php echo $config['title']; if(!(empty($config['remark']) || (($config['remark'] instanceof \think\Collection || $config['remark'] instanceof \think\Paginator ) && $config['remark']->isEmpty()))): ?><span>(<?php echo $config['remark']; ?>)</span><?php endif; ?></div>
							 <input  class="input_box" type="text" name="config[<?php echo $config['name']; ?>]" value="<?php echo $config['value']; ?>" id="<?php echo $config['name']; ?>" style="color:<?php echo $config['value']; ?>"/>
							<script>
							$("#<?php echo $config['name']; ?>").colorpicker({
								fillcolor:true,
								success:function(o,color){
									$(o).css("color",color);
								}
							});</script>
							<?php break; case "picture": ?>
						   <div class="upload_div">
								<div class="input_title"><?php echo $config['title']; if(!(empty($config['remark']) || (($config['remark'] instanceof \think\Collection || $config['remark'] instanceof \think\Paginator ) && $config['remark']->isEmpty()))): ?><span>(<?php echo $config['remark']; ?>)</span><?php endif; ?></div>
								<div class="upload_btn_group">

									<input type="file" class="upload_file" id="<?php echo $config['name']; ?>" onchange="upload()"/>
							 	</div>
								<div class="upload_imgs h50">
									<input type="hidden" name="config[<?php echo $config['name']; ?>]"  value="<?php echo $config['value']; ?>"	id="config[<?php echo $config['name']; ?>]">
									  <span class="upload_imgs_wrap upload-pre-img-<?php echo $config['name']; ?> ">
							          <?php if(!(empty($config['value']) || (($config['value'] instanceof \think\Collection || $config['value'] instanceof \think\Paginator ) && $config['value']->isEmpty()))): ?>  
									  <div class="upload-pre-item" id="upload-pre-item">
									    <img src="<?php echo get_cover_path($config['value']); ?>"/>
						                </div>
									  <?php endif; ?>
									</span>
								</div>
							</div>
                     <?php break; endswitch; endforeach; endif; else: echo "" ;endif; ?>	
						</div>
						<div class="edit_content_tab none">
							
						</div>
						<div class="btn_group">
						    <input type="hidden" name="id" value="<?php echo (isset($info['id']) && ($info['id'] !== '')?$info['id']:""); ?>">
							<div class="confirm_btn">确认</div>
							<div class="cancel_btn">返回</div>
						</div></form> 
					</div>
				</div>

			</div>
		</div>
		
	
    <script>
		function upload() {
			var form = new FormData();
			var img_file = $("#LOGO").val();
			var fileobj = $("#LOGO")[0].files[0];
			form.append('name',img_file);
			form.append('imgFile',fileobj);
			$.ajax({
				url: "/admin.php/uploads/upimg.html?dir=image",
				data: form,
				dataType:'JSON',
				type: "POST",
				processData:false,
				contentType:false,
				success: function(res){
					 console.dir(res);
					// console.log(res);
					$("#hidden_img").show();
					$("#upload-pre-item").html('<img width="60px" class="up_img" src="'+res.url+'" />');
					$("#config[LOGO]").val(res.url);
				}
			})
		}

		$(".p_menue").on('click',function(){
					if($(this).parent(".menue").hasClass("down")){
						$(this).parent(".menue").removeClass("down").addClass("up");
						$(this).find("span").attr("class","folder_icon_on");
					}else{
						$(this).parent(".menue").removeClass("up").addClass("down");
						$(this).find("span").attr("class","folder_icon");
					}
					
				});
				$(".c_menue_item").on("click",function(){
					if(!$(this).hasClass("checked")){
						$(".nav_tree_list .c_menue_item").removeClass("checked");
						$(this).addClass("checked");
					}
				})
				$(".close_tips").click(function(){
					$(".tips_msg").hide();
					
				});
				
	
		</script>
			<!-- 尾部 -->
	
<script src="__JS__/common.js"></script>
<script>
var html='<footer style=""><p> 版权所有 慧敏职业学校  </p></footer>';

$(".content").append(html);
</script>
</body>
</html>
<!-- 尾部 --> 