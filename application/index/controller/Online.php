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
class Online extends Base{

	/* 新增报名用户 */
	public function add(){
	    if($_POST){
			$data=array();
            foreach($_POST as $key=>$val){
		      $data[$key]=safe_replace($val);
		    }
            $check = $this->checkIdcard($data);
            if(!$check){
                $this->error("身份证号:".$data['idcard'].",已报名！");
            }
            $ref_check= $this->checkReferee($data);
            if(!empty($ref_check)){
                $this->error($ref_check);
            }
		    $Online = new \app\index\model\Online();
            $res=$Online->validate(true)->allowField(true)->save($data);
	        if($res){
		        $this->success("报名成功！");
		    }else{
			    $error=$Online->getError()?$Online->getError():"报名失败！";
			    $this->error($error);
		   } 
	  }
	 
	}

    /**
     * 检查身份证号是否已报名
     * @param $data
     * @return bool
     *
     */
	public function checkIdcard(&$data){
	    $map['idcard'] = $data['idcard'];
        $Online = new \app\index\model\Online();
        $data1 = $Online->get( $map);
        if(empty($data1)){
            return true;
        }else{
            return false;
        }

    }

    /**
     * 检查推荐人
     *
     *
     * @param $data
     *
     */
    public function checkReferee(&$data){
        if($data['username'] == $data['referee']){
            return "推荐人不能是自己";
        }
        if($data['mobile'] == $data['referee_mobile']){
            return "推荐人手机号不能和自己的手机号相同";
        }
        $regs = "/^1\d{10}$/";
        $reg_mobile = preg_match($regs,$data['mobile']);
        if(!$reg_mobile){
            return "手机号码格式错误！";
        }
        $reg_ref = preg_match($regs,$data['referee_mobile']);
        if(!$reg_ref){
            return "推荐人手机号码格式错误！";
        }
        if(!preg_match('/^\d{17}(\d|x)$/i',$data['idcard']))
        {
             return "身份证号不正确";
        }

        return "";

    }

}
