<?php
// +----------------------------------------------------------------------
// | 贝云cms内容管理系统 [ 简单 高效 卓越 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.bycms.cn All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：贝云cms内容管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用贝云cms内容管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.bycms.cn
// +----------------------------------------------------------------------
namespace app\index\controller;
use think\Controller;
use think\Db;

class Base extends Controller
{
	
	 protected function _initialize(){
     
       if(!C('WEB_SITE_CLOSE')){
		   $this->error('站点已经关闭，请稍后访问~');
       }
	    $map["id"]=["in","110,111,112"];
        $teacher=db("config")->where($map)->select();
        $this->assign ( 'teacher', $teacher);

		if( is_login( ) ){
			$uid=is_login();
		    $UcenterMember=Db::name("UcenterMember")->find($uid);
            $this->assign( 'UcenterMember',$UcenterMember );
		
		}
        $Channel=new \app\index\model\Channel;
		$menu=$Channel->getCategory() ;
		$this->assign('menu', $menu);
		
		/* 底部关于我们 */
       $where['type'] = 1;  
	   $where['pid'] =array("gt",0);  
	   $footer=db( 'category' )->where( $where )->order("sort asc")->select( );
       $this->assign( 'footer', $footer);
    } 
}