<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:66:"D:\phpstudy_pro\WWW\huimin/application/index\view/public/error.tpl";i:1495982843;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\header.html";i:1610713576;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\footer.html";i:1610702109;}*/ ?>

<!DOCTYPE html>
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