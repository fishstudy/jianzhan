<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:80:"D:\phpstudy_pro\WWW\huimin/application/index\view\model\document_photo_list.html";i:1507212800;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\header.html";i:1610713576;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\footer.html";i:1610702109;}*/ ?>
<!DOCTYPE html><html>	<head>		<meta charset="utf-8" />		<title><?php echo $meta_title; ?>_<?php echo C('WEB_SITE_TITLE'); ?></title>        <script type="text/javascript" src="__COMMON__/jquery.min.js"></script>	    <meta name="keywords" content="<?php echo C('KEYWORD'); ?>"/>	    <meta name="description" content="<?php echo C('DESCRIPTION'); ?>"/>		<link href="__CSS__/base.css" rel="stylesheet" type="text/css" />		<link href="__CSS__/style.css" rel="stylesheet" type="text/css" />		<script src="__JS__/slide.js"></script>		<script type="text/javascript" src="__JS__/lbnews.js"></script><script type="text/javascript">$(document).ready(function(){	$("#scrollDiv").Scroll({line:1,speed:600,timer:3000,up:"but_up",down:"but_down"});});</script><script src="__JS__/base.js"></script></head><body><!--header--><div class="index_body"><div class="header">     <div class="w1200">          <div class="head">          <span class="fl logo"><a href="#"><img src="<?php echo C('LOGO'); ?>" width="688" height="80" /></a></span>          <span class="fr top">          <em>招生电话：<?php echo C('guojicode'); ?></em>          <em>招生电话：<?php echo C('procode'); ?></em>          <em>招生电话：<?php echo C('PHONE'); ?></em>          </span>          <div class="clear"></div>          </div>          <div class="menu">          <ul>        		  <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>          <li><a href="<?php echo get_url($vo['url']); ?>" target="<?php echo $vo['target']; ?>"><?php echo $vo['title']; ?></a>          <div class="snav">                <dl>                  <?php if(is_array($vo['items']) || $vo['items'] instanceof \think\Collection || $vo['items'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['items'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>				    <dd><a href="<?php echo get_url($vo1['url']); ?>" target="<?php echo $vo['target']; ?>"><?php echo $vo1['title']; ?></a></dd>                                        				 <?php endforeach; endif; else: echo "" ;endif; ?>                </dl>          </div>          </li>		  <?php endforeach; endif; else: echo "" ;endif; ?>                           </ul>          <div class="clear"></div>          </div>     </div></div> 
	<!--banner-->
<div class="banner">
    <div class="w1200">
    <div class="ck-slide">
     <ul class="ck-slide-wrapper">
                       <?php $__LIST__= parseSlide(1,'sort asc',5); if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
								<li>
									<a href="<?php echo get_url($vo['url']); ?>"><img src="<?php echo get_cover_path($vo['cover_id']); ?>"/></a>
								</li>
								<?php endforeach; endif; else: echo "" ;endif; ?>	
    </ul>
    <div class="ck-slidebox">
    <div class="slideWrap">
    <ul class="dot-wrap">
		<?php $__LIST__= parseSlide(1,'sort desc',5); if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
		<li class="<?php if($i == 1): ?>current<?php endif; ?>"><em><?php echo $i; ?></em></li>
		<?php endforeach; endif; else: echo "" ;endif; ?>	
    </ul>
    </div>
    </div>
    </div>
	<script>
        $('.ck-slide').ckSlide({
            autoPlay: true
        });
    </script>
    </div>
</div>
<!--main-->
<div class="main">
     <div class="w1200">
          <div class="section">
               <div class="home">你的当前位置：<a href="<?php echo url('index/index'); ?>">首页</a> > <em><?php echo $info['title']; ?></em></div>
               <div class="contain">
                    <div class="fl leftside">
                    <div class="nav">
                     <h1 class="tit"><?php echo $info['title']; ?></h1>
                     <div class="nav_list">
                     <ul>
                    	 <?php foreach($ids as $vo): ?>  
			                <li><a href="<?php echo url('article/lists?id='.$vo); ?>"><?php echo get_category($vo,"title"); ?></a></li>
		                 <?php endforeach; ?>
						   <li><a href="<?php echo url('article/lists?id='.$info['id']); ?>"><?php echo $info['title']; ?></a></li>
                     </ul>
                     </div>
                     <div class="talk">
                         <h3>2017年招生咨询</h3>
                         <div class="onlink">
                         <ul>
                         <?php if(is_array($teacher) || $teacher instanceof \think\Collection || $teacher instanceof \think\Paginator): $i = 0; $__LIST__ = $teacher;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                         <li><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $vo['value']; ?>&site=qq&menu=yes"><?php echo $vo['title']; ?></a></li>
                          <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <div class="clear"></div>
                         </div>
                         <div class="down">
                              <div class="ys">
                              <a href="<?php echo url('index/online'); ?>">
                              <span>
                              <strong>在线报名</strong>
                              <em>Registration</em>
                              </span>
                              </a>
                              </div>
                              <div class="ys2">
                              <span>
                              <strong>联系电话</strong>
                              <em><?php echo C("PHONE"); ?></em>
                              </span>
                              </div>
                              <div class="clear"></div>
                         </div>
                         </div>
                    <div class="list">
                    <ul>
                     <li><a href="<?php echo url('article/detail?id=25'); ?>"><i class="img1"></i><p>志愿填报</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/detail?id=26'); ?>"><i class="img2"></i><p>录取规则</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/lists?id=4'); ?>"><i class="img3"></i><p>教学管理</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/lists?id=6'); ?>"><i class="img4"></i><p>学工管理</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/lists?id=16'); ?>"><i class="img5"></i><p>行业快讯</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/detail?id=27'); ?>"><i class="img6"></i><p>奖助学金</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/detail?id=28'); ?>"><i class="img7"></i><p>就业管理</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/detail?id=29'); ?>"><i class="img8"></i><p>报备查询</p><b><img src="__IMG__/border.png" /></b></a></li>
                    </ul>
                    <div class="clear"></div>
                    </div>
                    </div>
                    </div>
                    <div class="fr rightside">
					<div class="box">
                    <ul>
					
				      <?php if(is_array($res['list']) || $res['list'] instanceof \think\Collection || $res['list'] instanceof \think\Paginator): $i = 0; $__LIST__ = $res['list'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?> 
					  <li>
                    <div class="list">
                         <span class="fl img"><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><img src="<?php echo get_cover_path($vo['cover_id']); ?>" width="320" height="180"></a></span>
                         <div class="fr tit">
                         <h5><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><?php echo $vo['title']; ?></a></h5>
                         <p><?php echo $vo['description']; ?>...</p>
                         <span class="bottom"><b></b><a href="<?php echo url('article/detail?id='.$vo['id']); ?>">+查看详细</a></span>
                         </div>
                         <div class="clear"></div>
                    </div>
                    </li>
					  <?php endforeach; endif; else: echo "" ;endif; ?>                
                    </ul>
					 <?php echo $res['page']; ?>
                    </div>
                    
                    </div>
                    <div class="clear"></div>
               </div>
          </div>
     </div>
</div>
<!--footer-->
<div class="footer">
     <div class="w1200">
     <div class="f_menu"> <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo get_url($vo['url']); ?>"><?php echo $vo['title']; ?></a> <?php endforeach; endif; else: echo "" ;endif; ?></div>
     <p>联系我们版权所有©慧敏职业学校 <?php echo C("ISP"); ?> 本站介绍：慧敏职业学校</p>
     <p>地址：<?php echo C("ADDRESS"); ?>　 电话：<?php echo C("PHONE"); ?></p>
    <div class="qrcode"><span><img src="__IMG__/wx.jpg" width="100" height="100"><p>微信</p></span><span><img src="__IMG__/alipay.png" width="100" height="100"><p>服务窗</p></span></div>
	 </div>
     
</div>
</body>
</html>