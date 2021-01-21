<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
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
	    $map["id"]=["in","110,111,112,113"];
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