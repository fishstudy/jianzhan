<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:67:"D:\phpstudy_pro\WWW\huimin/application/index\view\index\online.html";i:1610783166;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\header.html";i:1610713576;s:68:"D:\phpstudy_pro\WWW\huimin/application/index\view\public\footer.html";i:1610702109;}*/ ?>
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
               <div class="home">你的当前位置：<a href="#">首页</a> > <em>在线报名</em></div>
               <div class="contain">
                    <div class="fl leftside">
                    <div class="nav">
                     <h1 class="tit">在线报名<em>ONLINE REGISTRAATION</em></h1>
                     <div class="nav_list">
                     <ul>
                     <li><a href="#">在线报名</a></li>
                     </ul>
                     </div>
                    <div class="talk">
                         <h3>招&nbsp;&nbsp;&nbsp;&nbsp;生&nbsp;&nbsp;&nbsp;&nbsp;咨&nbsp;&nbsp;&nbsp;&nbsp;询</h3>
                         <div class="onlink">
                         <ul>
                           <?php if(is_array($teacher) || $teacher instanceof \think\Collection || $teacher instanceof \think\Paginator): $i = 0; $__LIST__ = $teacher;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                         <li><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $vo['value']; ?>&site=qq&menu=yes" target="_blank"><?php echo $vo['title']; ?></a></li>
                          <?php endforeach; endif; else: echo "" ;endif; ?>
                         </ul>
                         <div class="clear"></div>
                         </div>
                         <div class="down">
                              <div class="ys">
                              <a href="#">
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
                    <li><a href="<?php echo url('article/detail?id=26'); ?>"><i class="img2"></i><p>录取规则</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/lists?id=4'); ?>"><i class="img3"></i><p>教学管理</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/lists?id=16'); ?>"><i class="img5"></i><p>行业快讯</p><b><img src="__IMG__/border.png" /></b></a></li>
                    <li><a href="<?php echo url('article/detail?id=28'); ?>"><i class="img7"></i><p>就业管理</p><b><img src="__IMG__/border.png" /></b></a></li>
                    </ul>
                    <div class="clear"></div>
                    </div>
                    </div>
                    </div>
                    <div class="fr rightside">
                    <div class="zx_test">
                    <form action="<?php echo url('online/add'); ?>">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td class="name">姓名：</td>
                        <td><input name="username" type="text" /><span>*</span></td>
                      </tr>
                      <tr>
                        <td class="name">性别：</td>
                        <td>
                        <input checked="checked" value="1" class="radio" name="sex" id="xb1" type="radio"><label for="xb1"> &nbsp;男</label>
                        <input class="radio" value="2" name="sex" id="xb2" type="radio"><label for="xb2"> &nbsp;女</label>
                        <span>*</span>
                        </td>
                      </tr>
                      <tr>
                        <td class="name">家庭住址：</td>
                        <td>
                            <select id="province" name="province" >
                                <option value="">选择省份</option>
                                  <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                    <option  value="<?php echo $vo['id']; ?>" ><?php echo $vo['title']; ?></option>
                                  <?php endforeach; endif; else: echo "" ;endif; ?>
                             </select>
                             <select id="city" name="city">
                                 <option value="">选择城市</option>
                             </select>
                            <select id="area" name="area">
                                <option value="">选择区县</option>
                            </select>
                            <span>*</span>
                      </td>
                      </tr>
                        <tr>
                            <td class="name">详细地址：</td>
                            <td><input name="detail" type="text" /><span>*</span></td>
                        </tr>
                      <tr>
                        <td class="name">专业方向：</td>
                        <td>
                        <select name="profession">
                            <option value="">请选择</option>
                             <?php if(is_array($prolist) || $prolist instanceof \think\Collection || $prolist instanceof \think\Paginator): $i = 0; $__LIST__ = $prolist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <option  value="<?php echo $vo['id']; ?>" ><?php echo $vo['title']; ?></option>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </select>

                        </select>
                        </td>
                      </tr>
                      <tr>
                        <td class="name">身份证号：</td>
                        <td><input name="idcard" type="text" /><span>*</span></td>
                      </tr>
                      <tr>
                        <td class="name">最高学历：</td>
                        <td>
                                <select name="education">
                                <option value="">请选择</option>
                                <option value="1">研究生</option>
                                <option value="2">本科</option>
                                <option value="3">大专</option>
                                <option value="4">高中</option>
                                <option value="5">初中</option>
                                <option value="6">小学</option>
                            </select><span>*</span>
                        </td>
                      </tr>
                      <tr>
                        <td class="name">手机号码：</td>
                        <td><input name="mobile" type="text"  onkeyup="this.value=this.value.replace(/\D/g,'')"/><span>*</span></td>
                      </tr>
                        <tr>
                            <td class="name">微信号：</td>
                            <td><input name="weixin" type="text" /></td>
                        </tr>
                      <tr>
                        <td class="name">QQ号码：</td>
                        <td><input name="qq" type="text" /></td>
                      </tr>
                      <tr>
                        <td class="name">推荐人：</td>
                        <td><input name="referee" type="text" /></td>
                      </tr>
                      <tr>
                        <td class="name">推荐人手机：</td>
                        <td><input name="referee_mobile" type="text"  onkeyup="this.value=this.value.replace(/\D/g,'')"/></td>
                      </tr>
                      <tr>
                         <td class="name">其他说明：</td>
                         <td><input name="others" type="text" /></td>
                      </tr>
                      <tr>
                        <td class="name">&nbsp;</td>
                        <td><input name="" type="button" class="yes btn_submit" value="确认提交"/></td>
                      </tr>
                    </table>
                    </form>
                    <div class="line"></div>
                    <div class="atention">
                    <br/>
                    <h5>招生电话：</h5>
                    <p><?php echo C('PHONE'); ?></p>
                    </div>
                    </div>
                    </div>
                    <div class="clear"></div>
               </div>
          </div>
     </div>
</div>	
<script type="text/javascript" src="__JS__/jquery.min.js" ></script>
<script type="text/javascript">
    //选择省改变对应的市
    $('#province').change(function(){
        if(this.value==-1){
            return;
        }
        $.post('<?php echo url("area/change"); ?>',{pid:this.value},
            function(data,textStatus){
                if(data){
                    $('#city').empty();//清空原有的数据
                    $("<option value='-1'>选择城市</option>").appendTo("#city");
                    $.each(data, function(i,n){
                        $("<option value='"+n.id+"'>"+n.title+"</option>").appendTo("#city");

                    });

                }else{
                    alert('没有子级了!');
                }
            },'json');
    });
    //选择市改变对应的区或县
    $('#city').change(function(){
        if(this.value==-1){
            return;
        }
        $.post('<?php echo url("area/change"); ?>',{pid:this.value},
            function(data,textStatus){
                if(data){

                    $('#area').empty();//清空原有的数据
                    $("<option value='-1'>选择区域</option>").appendTo("#area");
                    $.each(data, function(i,n){
                        $("<option value='"+n.id+"'>"+n.title+"</option>").appendTo("#area");
                        //$("#ltwo").append('<option value="'+n.region_id+'">'+n.region_name+'</option>');
                    });
                    $('#ltwo').show();
                }else{
                    alert('没有子级了!');
                }
            },'json');
    });

		
    $(".btn_submit").click(function(){
        var self = $("form");
        $.post(self.attr("action"),self.serialize(),success,"json");
        return false;
     });

    function success(data){
        if(data.code){
            alert(data.msg);
        } else {
            alert(data.msg);
            //刷新验证码
            //$(".reloadverify").click();
        }
    }
	</script>	
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
