<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:66:"D:\phpstudy_pro\WWW\huimin/application/index\view\index\index.html";i:1611113773;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\header.html";i:1610971710;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\footer.html";i:1611039373;}*/ ?>
<!DOCTYPE html><html>	<head>		<meta charset="utf-8" />		<title><?php echo $meta_title; ?>_<?php echo C('WEB_SITE_TITLE'); ?></title>        <script type="text/javascript" src="__COMMON__/jquery.min.js"></script>	    <meta name="keywords" content="<?php echo C('KEYWORD'); ?>"/>	    <meta name="description" content="<?php echo C('DESCRIPTION'); ?>"/>		<link href="__CSS__/base.css" rel="stylesheet" type="text/css" />		<link href="__CSS__/style.css" rel="stylesheet" type="text/css" />		<script src="__JS__/slide.js"></script>		<script type="text/javascript" src="__JS__/lbnews.js"></script><script type="text/javascript">$(document).ready(function(){	$("#scrollDiv").Scroll({line:1,speed:600,timer:3000,up:"but_up",down:"but_down"});});</script><script src="__JS__/base.js"></script></head><body><!--header--><div class="index_body"><div class="header">     <div class="w1200">          <div class="head">          <span class="fl logo"><a href="#"><img src="<?php echo C('LOGO'); ?>" width="688" height="80" /></a></span>          <span class="fr top">          <em>招生电话：<?php echo C('guojicode'); ?></em>          <em>招生电话：<?php echo C('PHONE'); ?></em>          </span>          <div class="clear"></div>          </div>          <div class="menu">          <ul>        		  <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>          <li><a href="<?php echo get_url($vo['url']); ?>" target="<?php echo $vo['target']; ?>"><?php echo $vo['title']; ?></a>          <div class="snav">                <dl>                  <?php if(is_array($vo['items']) || $vo['items'] instanceof \think\Collection || $vo['items'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['items'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>				    <dd><a href="<?php echo get_url($vo1['url']); ?>" target="<?php echo $vo['target']; ?>"><?php echo $vo1['title']; ?></a></dd>                                        				 <?php endforeach; endif; else: echo "" ;endif; ?>                </dl>          </div>          </li>		  <?php endforeach; endif; else: echo "" ;endif; ?>                           </ul>          <div class="clear"></div>          </div>     </div></div> 
<!--banner-->
<div class="banner">
    <div class="w1200">
    <div class="ck-slide">
    <ul class="ck-slide-wrapper">
                       <?php $__LIST__= parseSlide(1,'sort asc',5); if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <li>
                                <a href="<?php echo get_url($vo['url']); ?>" target="_blank"><img src="<?php echo get_cover_path($vo['cover_id']); ?>"/></a>
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
<div class="gun_box">
     <div class="wrap">
     <div class="scrollbox">
		<div class="scroltit"><small id="but_up"><img src="__IMG__/top.png"></small><small id="but_down"><img src="__IMG__/down.png"></small></div>


		<div id="scrollDiv">
            <h1>重要通知</h1>
			<ul>
			<?php $__LIST__= parseCate(15,'id desc',6); if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <li style="float: none"><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><em><?php echo date("Y-m-d",$vo['create_time']); ?></em>· <?php echo $vo['title']; ?>...</a></li>
			<?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		</div>
	 </div>

     </div>
</div>
<!--main-->
<div class="main">
     <div class="w1200">
          <div class="section">
               <div class="step">
                    <div class="fl left">
                    <!-- 代码 begin -->
                    <div class="pro-switch">
                    <div class="slider">
                        <div class="flexslider">
                            <ul class="slides">
                           
							<?php $__LIST__= parseSlide(2,'sort asc',5); if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
								<li>
									<div class="img"><a href="<?php echo get_url($vo['url']); ?>"><img src="<?php echo get_cover_path($vo['cover_id']); ?>"/></a>
									</div>
								</li>
								<?php endforeach; endif; else: echo "" ;endif; ?>	
                            </ul>
                        </div>
                    </div>
                    <script defer src="__JS__/slider.js"></script>
                    <script type="text/javascript">
                    $(function(){
                      $('.flexslider').flexslider({
                        animation: "slide",
                        start: function(slider){
                          $('body').removeClass('loading');
                        }
                      });
                    });
                  </script>
                  </div>
                    <!-- 代码 end -->
                    </div>
                    <div class="fl center">
                         <div class="tab_box">
                              <div class="tab_tit">
                              <ul>
							  <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
                                <li><a href="<?php echo url('article/lists?id='.$vo['id']); ?>" <?php if($k == 1): ?> class="cur"
		                         <?php endif; ?>><?php echo $vo['title']; ?></a>
								</li>
							  <?php endforeach; endif; else: echo "" ;endif; ?>
                              </ul>
                              <div class="clear"></div>
                              </div>
                              <div class="content">
							   <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
                                  <div class="team" <?php if($k == 1): ?>style="display:block"
		                         <?php endif; ?>>
                                      
		                              <div class="top_div">
                                      <?php if(is_array($vo['data']) || $vo['data'] instanceof \think\Collection || $vo['data'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($vo['data']) ? array_slice($vo['data'],0,1, true) : $vo['data']->slice(0,1, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?> <h2><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><?php echo $vo1['title']; ?><?php echo $k; ?></a></h2>
                                       <p><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><?php echo $vo1['description']; ?>...</a></p>
									    <?php endforeach; endif; else: echo "" ;endif; ?>
                                       </div>
									  
                                       <div class="down_div">
                                       <ul>  <?php if(is_array($vo['data']) || $vo['data'] instanceof \think\Collection || $vo['data'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($vo['data']) ? array_slice($vo['data'],1,4, true) : $vo['data']->slice(1,4, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
                                       <li><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><em><?php echo date("m-d",$vo1['create_time']); ?></em>· <?php echo $vo1['title']; ?></a></li>
                                         <?php endforeach; endif; else: echo "" ;endif; ?>
                                       </ul>
                                       </div>
									   
                                  </div>
                                   <?php endforeach; endif; else: echo "" ;endif; ?>
                              </div>
                         </div>
                    </div>
                    <div class="fr right">
                         <div class="talk">
                         <h3>招&nbsp;&nbsp;&nbsp;&nbsp;生&nbsp;&nbsp;&nbsp;&nbsp;咨&nbsp;&nbsp;&nbsp;&nbsp;询</h3>
                         <div class="onlink">
                         <ul>
						 <?php if(is_array($teacher) || $teacher instanceof \think\Collection || $teacher instanceof \think\Paginator): $i = 0; $__LIST__ = $teacher;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                         <li><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $vo['value']; ?>&site=qq&menu=no" target="_blank"><?php echo $vo['title']; ?></a></li>
                          <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <div class="clear"></div>
                         </div>
                         <div class="down">
                              <div class="fl ys">
                              <a href="<?php echo url('index/online'); ?>">
                              <span>
                              <strong>在线报名</strong>
                              <em>Registration</em>
                              </span>
                              </a>
                              </div>
                              <div class="fr ys2">
                              <span>
                              <strong>联系电话</strong>
                              <em><?php echo C('PHONE'); ?></em>
                              </span>
                              </div>
                              <div class="clear"></div>
                         </div>
                         </div>
                    </div>
                    <div class="clear"></div>
               </div>
          </div>
          <div class="section">
               <div class="step2">
               <div class="title"><h4>推荐专业</h4><em>挑战高端专业，做高级工程师</em></div>
               <div class="list_box">
               <ul>
               <li><a href="<?php echo url('article/detail?id=8'); ?>"><span><img src="__IMG__/main_35.png" width="79" height="80" /></span><h5>
                   <?php echo $profession[0]['title']; ?></h5><em><?php echo $profession[0]['description']; ?></em></a></li>
               <li><a href="<?php echo url('article/detail?id=9'); ?>"><span><img src="__IMG__/main_37.png" width="79" height="80" /></span><h5><?php echo $profession[1]['title']; ?></h5><em><?php echo $profession[1]['description']; ?></em></a></li>
               <li><a href="<?php echo url('article/detail?id=10'); ?>"><span><img src="__IMG__/main_39.png" width="79" height="80" /></span><h5><?php echo $profession[2]['title']; ?></h5><em><?php echo $profession[2]['description']; ?></em></a></li>
               <li><a href="<?php echo url('article/detail?id=11'); ?>"><span><img src="__IMG__/main_41.png" width="79" height="80" /></span><h5><?php echo $profession[3]['title']; ?></h5><em><?php echo $profession[3]['description']; ?></em></a></li>
                   <li><a href="<?php echo url('article/detail?id=12'); ?>"><span><img src="__IMG__/main_44.png" width="79" height="80" /></span><h5><?php echo $profession[4]['title']; ?></h5><em><?php echo $profession[4]['description']; ?></em></a></li>
               </ul>
               <div class="clear"></div>
               </div>
               </div>
          </div>
          <div class="section">
               <div class="step3"><a href="#"><img src="__IMG__/index_51.jpg" width="1200" height="100" /></a></div>
          </div>
          <div class="section">
               <div class="step4">
                    <div class="fl left2">
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
                    <h6><a href="#"><img src="__IMG__/index_67.jpg" width="230" height="80" /></a></h6>
                    </div>
                    <div class="fl center2">
                    <div class="list2">
                         <div class="box2">
                         <h2>教学成果</h2>
                         <div class="top_div">
                         <?php if(is_array($data1) || $data1 instanceof \think\Collection || $data1 instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($data1) ? array_slice($data1,0,1, true) : $data1->slice(0,1, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
						<h3><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><?php echo $vo1['title']; ?></a></h3>
                         <p><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><?php echo (isset($vo1['description']) && ($vo1['description'] !== '')?$vo1['description']:''); ?>...</a></p>
						 <?php endforeach; endif; else: echo "" ;endif; ?>
                         </div>
                         <div class="down_div">
                         <ul class="fl"> 
						 <?php if(is_array($data1) || $data1 instanceof \think\Collection || $data1 instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($data1) ? array_slice($data1,1,3, true) : $data1->slice(1,3, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
                         <li><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><em><?php echo date("m-d",$vo1['create_time']); ?></em>· <?php echo $vo1['title']; ?></a></li>
                         <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <ul class="fr"> 
						 <?php if(is_array($data1) || $data1 instanceof \think\Collection || $data1 instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($data1) ? array_slice($data1,4,3, true) : $data1->slice(4,3, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
                          <li><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><em><?php echo date("m-d",$vo1['create_time']); ?></em>· <?php echo $vo1['title']; ?></a></li>
                         <?php endforeach; endif; else: echo "" ;endif; ?>
                        
						 </ul>
                         <div class="clear"></div>
                         </div>
                         </div>
                         <div class="box">
                         <h2>招生问答</h2>
                         <div class="top_div">
                          <?php if(is_array($data2) || $data2 instanceof \think\Collection || $data2 instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($data2) ? array_slice($data2,0,1, true) : $data2->slice(0,1, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
						 <h3><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><?php echo $vo1['title']; ?></a></h3>
                         <p><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><?php echo (isset($vo1['description']) && ($vo1['description'] !== '')?$vo1['description']:''); ?>...</a></p>
						 <?php endforeach; endif; else: echo "" ;endif; ?>
                         </div>
                         <div class="down_div">
                         <ul class="fl"> 
						 <?php if(is_array($data2) || $data2 instanceof \think\Collection || $data2 instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($data2) ? array_slice($data2,1,3, true) : $data2->slice(1,3, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
                         <li><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><em><?php echo date("m-d",$vo1['create_time']); ?></em>· <?php echo $vo1['title']; ?></a></li>
                         <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <ul class="fr"> 
						 <?php if(is_array($data2) || $data2 instanceof \think\Collection || $data2 instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($data2) ? array_slice($data2,4,3, true) : $data2->slice(4,3, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
                          <li><a href="<?php echo url('article/detail?id='.$vo1['id']); ?>"><em><?php echo date("m-d",$vo1['create_time']); ?></em>· <?php echo $vo1['title']; ?></a></li>
                         <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <div class="clear"></div>
                         </div>
                         </div>
                    </div>
                    </div>
                    <div class="fr right2">
                        <div><h4>就业明星<em>平均薪资在10k以上</em></h4></div>
                    <div style="height: 400px;">
                    <div class="star" id="star" style="position: relative;height: 360px;overflow: hidden;">
                    <ul id="starul">
					<?php if(is_array($data3) || $data3 instanceof \think\Collection || $data3 instanceof \think\Paginator): $k = 0;$__LIST__ = is_array($data3) ? array_slice($data3,0,8, true) : $data3->slice(0,8, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
                    <li if condition="$k eq 1"}class="last"{/if}>
                    <div class="item">
                         <span class="fl pic"><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><img src="<?php echo get_cover_path($vo['cover_id']); ?>" width="60" height="60" /></a></span>
                         <div class="fr wz">
                         <h5><a href="#"><?php echo $vo['title']; ?></a></h5>
                         <em>高级软件工程师专业</em>
                         <p><?php echo $vo['title']; ?></p>
                         </div>
                         <div class="clear"></div>
                    </div>
                    </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                    </div>
                    </div>
                    </div>
                    <div class="clear"></div>
               </div>
          </div>
          <div class="section">
               <div class="step5">
                    <div class="title"><h4>校园风采</h4><em>莘莘学子勤奋攻读、矢志成才的理想园地</em></div>
                    <div class="img_show">
					    <?php if(is_array($data4) || $data4 instanceof \think\Collection || $data4 instanceof \think\Paginator): $k = 0;$__LIST__ = is_array($data4) ? array_slice($data4,0,1, true) : $data4->slice(0,1, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
                         <div class="fl left3"><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><div class="tp"><img src="<?php echo get_cover_path($vo['cover_id']); ?>" width="400" height="246" /><p class="info"><?php echo $vo['title']; ?></p></div></a></div>
						 <?php endforeach; endif; else: echo "" ;endif; ?>
                         <div class="fr right3">
                         <ul>
						 <?php if(is_array($data4) || $data4 instanceof \think\Collection || $data4 instanceof \think\Paginator): $k = 0;$__LIST__ = is_array($data4) ? array_slice($data4,1,8, true) : $data4->slice(1,8, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
                         <li><a href="<?php echo url('article/detail?id='.$vo['id']); ?>"><div class="tp"><img src="<?php echo get_cover_path($vo['cover_id']); ?>" width="190" height="118" /><p class="info"><?php echo $vo['title']; ?></p></div></a></li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <div class="clear"></div>
                         </div>
                         <div class="clear"></div>
                    </div>
               </div>
          </div>
     </div>
</div>
<script>
    $(function () {
        var num=$("#starul").find("li").length;
        if (num>1) {
            setInterval(function(){
                $('#starul').animate({
                    marginTop:"-56px"
                },500,function(){
                    $(this).css({marginTop : "0"}).find("li:first").appendTo(this);
                });
            }, 5000);
        }
    })
</script>
<!--footer-->
	<div class="footer">
     <div class="w1200">
     <div class="f_menu"> <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo get_url($vo['url']); ?>"><?php echo $vo['title']; ?></a> <?php endforeach; endif; else: echo "" ;endif; ?></div>
    <div class="qrcode"><span><img src="__IMG__/wx.jpg" width="100" height="100"><p>微信</p></span><span><img src="__IMG__/alipay.png" width="100" height="100"><p>服务窗</p></span></div>
	 </div>
    <p>版权所有©慧敏职业学校 &nbsp;&nbsp;&nbsp;&nbsp;地址：<?php echo C("ADDRESS"); ?>&nbsp;&nbsp;&nbsp;&nbsp;电话：<?php echo C("PHONE"); ?></p>
</div>
</body>
</html>
