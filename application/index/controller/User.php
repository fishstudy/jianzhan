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

/**
 * 用户控制器
 * 包括用户中心，用户登录及注册
 */
class User extends Base{

	/* 新增报名用户 */
	public function add(){
	    if($_POST){
			$data=array();
            foreach($_POST as $key=>$val){
		      $data[$key]=safe_replace($val);
		    }
		    $User = new \app\index\model\Online;
            $res=$User->validate(true)->allowField(true)->save($data);
	        if($res){
		        $this->success("报名成功！");
		    }else{
			    $error=$User->getError()?$User->getError():"报名失败！";
			    $this->error($error);
		   } 
	  }
	 
	}

}
