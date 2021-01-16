<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:66:"D:\phpstudy_pro\WWW\huimin/application/index\view/public/error.tpl";i:1495982843;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\header.html";i:1610713576;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\footer.html";i:1610702109;}*/ ?>

<!DOCTYPE html><html>	<head>		<meta charset="utf-8" />		<title><?php echo $meta_title; ?>_<?php echo C('WEB_SITE_TITLE'); ?></title>        <script type="text/javascript" src="__COMMON__/jquery.min.js"></script>	    <meta name="keywords" content="<?php echo C('KEYWORD'); ?>"/>	    <meta name="description" content="<?php echo C('DESCRIPTION'); ?>"/>		<link href="__CSS__/base.css" rel="stylesheet" type="text/css" />		<link href="__CSS__/style.css" rel="stylesheet" type="text/css" />		<script src="__JS__/slide.js"></script>		<script type="text/javascript" src="__JS__/lbnews.js"></script><script type="text/javascript">$(document).ready(function(){	$("#scrollDiv").Scroll({line:1,speed:600,timer:3000,up:"but_up",down:"but_down"});});</script><script src="__JS__/base.js"></script></head><body><!--header--><div class="index_body"><div class="header">     <div class="w1200">          <div class="head">          <span class="fl logo"><a href="#"><img src="<?php echo C('LOGO'); ?>" width="688" height="80" /></a></span>          <span class="fr top">          <em>招生电话：<?php echo C('guojicode'); ?></em>          <em>招生电话：<?php echo C('procode'); ?></em>          <em>招生电话：<?php echo C('PHONE'); ?></em>          </span>          <div class="clear"></div>          </div>          <div class="menu">          <ul>        		  <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>          <li><a href="<?php echo get_url($vo['url']); ?>" target="<?php echo $vo['target']; ?>"><?php echo $vo['title']; ?></a>          <div class="snav">                <dl>                  <?php if(is_array($vo['items']) || $vo['items'] instanceof \think\Collection || $vo['items'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['items'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>				    <dd><a href="<?php echo get_url($vo1['url']); ?>" target="<?php echo $vo['target']; ?>"><?php echo $vo1['title']; ?></a></dd>                                        				 <?php endforeach; endif; else: echo "" ;endif; ?>                </dl>          </div>          </li>		  <?php endforeach; endif; else: echo "" ;endif; ?>                           </ul>          <div class="clear"></div>          </div>     </div></div> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>跳转提示</title>
    <style type="text/css">
        *{ padding: 0; margin: 0; }
        body{ background: #fff; font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif; color: #333; font-size: 16px; }
        .system-message{ margin:0 auto;padding: 54px 248px; }
        .system-message h1{ font-size: 100px; font-weight: normal; line-height: 120px; margin-bottom: 12px; }
        .system-message .jump{ padding-top: 10px; }
        .system-message .jump a{ color: #333; }
        .system-message .success,.system-message .error{ line-height: 1.8em; font-size: 36px; }
        .system-message .detail{ font-size: 12px; line-height: 20px; margin-top: 12px; display: none; }
    </style>
</head>
<body>
    <div class="system-message">
        <?php switch ($code) {case 1:?>
            <h1>:)</h1>
            <p class="success"><?php echo(strip_tags($msg));?></p>
            <?php break;case 0:?>
            <h1>:(</h1>
            <p class="error"><?php echo(strip_tags($msg));?></p>
            <?php break;} ?>
        <p class="detail"></p>
        <p class="jump">
            页面自动 <a id="href" href="<?php echo($url);?>">跳转</a> 等待时间： <b id="wait"><?php echo($wait);?></b>
        </p>
    </div>
    <script type="text/javascript">
        (function(){
            var wait = document.getElementById('wait'),
                href = document.getElementById('href').href;
            var interval = setInterval(function(){
                var time = --wait.innerHTML;
                if(time <= 0) {
                    location.href = href;
                    clearInterval(interval);
                };
            }, 1000);
        })();
    </script>
<div class="footer">
     <div class="w1200">
     <div class="f_menu"> <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo get_url($vo['url']); ?>"><?php echo $vo['title']; ?></a> <?php endforeach; endif; else: echo "" ;endif; ?></div>
     <p>联系我们版权所有©慧敏职业学校 <?php echo C("ISP"); ?> 本站介绍：慧敏职业学校</p>
     <p>地址：<?php echo C("ADDRESS"); ?>　 电话：<?php echo C("PHONE"); ?></p>
    <div class="qrcode"><span><img src="__IMG__/wx.jpg" width="100" height="100"><p>微信</p></span><span><img src="__IMG__/alipay.png" width="100" height="100"><p>服务窗</p></span></div>
	 </div>
     
</div> 
