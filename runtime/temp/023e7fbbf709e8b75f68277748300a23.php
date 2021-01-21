<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:66:"D:\phpstudy_pro\WWW\huimin/application/admin\view\index\index.html";i:1610938849;s:68:"D:\phpstudy_pro\WWW\huimin/application/admin\view\public\dialog.html";i:1504823103;s:67:"D:\phpstudy_pro\WWW\huimin/application/admin\view\public\color.html";i:1506937069;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?>|慧敏职业学校后台管理</title>
		<link rel="stylesheet" href="__CSS__/style.css" />
	    <link rel="stylesheet" href="__COMMON__/font-awesome/css/font-awesome.min.css">
		<script type="text/javascript" src="__JS__/jquery.min.js" ></script>
	</head>

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
	

	<body>
		<div class="top"  style="margin:0 auto;">
			<div class="logo"></div>
			<ul class="main_links">
			<li><a href="<?php echo url('index/index'); ?>">首页 </a></li>  <?php if(isset($group)): ?>    
                        <!-- 欢迎语 -->
						   <?php if(is_array($group) || $group instanceof \think\Collection || $group instanceof \think\Paginator): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <li><a href="<?php echo get_group_url($vo['id']); ?>"><?php echo (isset($vo['title']) && ($vo['title'] !== '')?$vo['title']:""); ?> </a></li>
							<?php endforeach; endif; else: echo "" ;endif; endif; ?>
			<li><a href="<?php echo site_url(); ?>" target="_blank">前台 </a></li>

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
	<div class="blocks" >
			
	<div class="warp">
			<div class="bg"></div>
				<div class="show_info">
					<div class="calc_goods_cate show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text">
							<span class="text_title">总分类数</span>
							<span class="num"><?php echo (isset($info['category']) && ($info['category'] !== '')?$info['category']:"0"); ?></span>
						</div>
					</div>
					
					  <div class="imgs_tnums show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text">
							<span class="text_title">总图片数</span>
							<span class="num"><?php echo (isset($info['category']) && ($info['category'] !== '')?$info['category']:"0"); ?></span>
						</div>
					</div>
					
					<div class="ads_nums show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text">
							<span class="text_title">广告个数</span>
							<span class="num"><?php echo (isset($info['ad']) && ($info['ad'] !== '')?$info['ad']:"0"); ?></span>
						</div>
					</div>
					<div class="goods_quantity show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text">
							<span class="text_title">日志个数</span>
							<span class="num"><?php echo (isset($info['log']) && ($info['log'] !== '')?$info['log']:"0"); ?></span>
						</div>
					</div>
					<div class="user_amount show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text">
							<span class="text_title">用户量</span>
							<span class="num"><?php echo (isset($info['user']) && ($info['user'] !== '')?$info['user']:"0"); ?></span>
						</div>
					</div>
				</div>
			  
				 
			</div>
		</div>
		
		
			<div class="container"> 

	<div class="item">

		
			<div class="tit">系统信息</div>
			
							<table>
					<tbody>
					<tr>
						<th>慧敏职业技术学校</th>
						<td>v1.0.0</td>
					</tr>
					<tr>
						<th>thinkphp版本</th>
						<td><?php echo THINK_VERSION; ?>
							
						</td>
				
					</tr><tr>
						<th>服务器操作系统</th>
						<td><?php echo PHP_OS; ?></td>
					</tr>
					

					<tr>
						<th>应用部署目录 </th>
												<td><?php echo getcwd(); ?></td>
					</tr>

					
				</tbody></table>
	
</div>
<div class="item">
			<div class="tit">软件信息</div>
				<table>
					<tbody>
					<tr>
						<th>软件名称</th>
						<td>内容管理系统</td>
					</tr>
					<tr>
						<th>服务器解译引擎</th>
						<td><?php echo $_SERVER['SERVER_SOFTWARE']; ?></td>
					</tr>
					<tr>
						<th>版权所有</th>
						<td>慧敏职业学校</td>
					</tr>
					<tr>
						<th>上传限制</th>
						<td><?php echo ini_get('upload_max_filesize'); ?></td>
					</tr>

				</tbody></table>
			</div>

	</div>
<div class="footer"><p> Powered by   @慧敏职业技术学校 </p></div>

