<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:67:"D:\phpstudy_pro\WWW\huimin/application/admin\view\channel\edit.html";i:1506904754;s:68:"D:\phpstudy_pro\WWW\huimin/application/admin\view\public\header.html";i:1506935140;s:68:"D:\phpstudy_pro\WWW\huimin/application/admin\view\public\dialog.html";i:1504823103;s:67:"D:\phpstudy_pro\WWW\huimin/application/admin\view\public\color.html";i:1506937069;s:68:"D:\phpstudy_pro\WWW\huimin/application/admin\view\public\footer.html";i:1505402999;}*/ ?>

 <!-- 头部 -->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?>|贝云cms后台管理</title>
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

<div class="content">
				<div class="tips_msg none"><span class="tips">保存成功</span><span class="close_tips"></span></div>
				<div class="edit_title"><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?></div>
				<div class="edit_box">
				
					<div class="edit_tab">
						<div class="tab_option on">基础</div>
						<div class="tab_option">高级</div>
					</div>
					<div class="edit_content">
					   <form class="group-form"  action="<?php echo url(''); ?>" method="post">
						<div class="edit_content_tab">
						<div class="input_title">名称<span>(模块名称)</span></div>
							<input type="text" name="title" class="input_box" value="<?php echo (isset($info['title']) && ($info['title'] !== '')?$info['title']:""); ?>"/>
						    <div class="input_title">链接<span>(模块链接)</span></div>
						    <input type="text" id="user-weibo" class="input_box" name="url" value="<?php echo (isset($info['url']) && ($info['url'] !== '')?$info['url']:""); ?>">
					  	  	<div class="input_title">上级分类<span>(所属分类)</span></div>
						 <select name="pid" >
                          <option value="0">一级导航</option>   
	                            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                   <option value="<?php echo $vo['id']; ?>"><?php echo (isset($vo['html']) && ($vo['html'] !== '')?$vo['html']:""); ?><?php echo $vo['title']; ?></option>
                           <?php endforeach; endif; else: echo "" ;endif; ?>
                           </select>

						
						    <div class="input_title">链接打开方式<span>（_blank或_self）</span></div>
						    <select name="target">
				             <option value="_self"  <?php if(!(empty($info['target']) || (($info['target'] instanceof \think\Collection || $info['target'] instanceof \think\Paginator ) && $info['target']->isEmpty()))): if($info['target'] == '_self'): ?>selected<?php endif; endif; ?>>当前窗口</option>
						   <option value="_blank"  <?php if(!(empty($info['target']) || (($info['target'] instanceof \think\Collection || $info['target'] instanceof \think\Paginator ) && $info['target']->isEmpty()))): if($info['target'] == '_blank'): ?>selected<?php endif; endif; ?>>新窗口</option>
				         
                           </select>
					  	 </div>
				         <div class="edit_content_tab none">
						  	<div class="input_title">排序<span>(越小越靠前)</span></div>
							<input type="text" name="sort" class="input_box" value="<?php echo (isset($info['sort']) && ($info['sort'] !== '')?$info['sort']:""); ?>"/>
							 <div class="input_title">状态<span>(状态)</span></div>
							<input type="text" name="status" class="input_box" value="<?php echo (isset($info['status']) && ($info['status'] !== '')?$info['status']:"1"); ?>"/>
						 </div>
						 <div class="btn_group">
						    <input type="hidden" name="id" value="<?php echo (isset($info['id']) && ($info['id'] !== '')?$info['id']:""); ?>">
							<div class="confirm_btn">确认</div>
							<div class="cancel_btn">返回</div>
						</div>
						</form> 
					</div>
				</div>
			</div>
		</div>
 <script src="__JS__/edit.js"></script>
   <script type="text/javascript">
    $("select[name='pid']").val("<?php echo (isset($info['pid']) && ($info['pid'] !== '')?$info['pid']:'0'); ?>");
    </script>
<!-- 尾部 -->
	
<script src="__JS__/common.js"></script>
<script>
var html='<footer style=""><p> Powered by <a href="http://www.bycms.cn/" target="_blank">bycms V1.0</a> </p></footer>';

$(".content").append(html);
switchEvent("#switch",function(){alert("开啦")},function(){alert("关了")});
</script>
</body>
</html>
    <!-- 尾部 --> 
