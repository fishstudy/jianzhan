<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
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
