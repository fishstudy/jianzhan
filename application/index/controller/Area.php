<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\index\controller;
use think\Controller;
use think\Db;
class Area extends Base{
    
	
	public  function change($pid = 0){

		   $pid=input('pid'); 	
           if(!($pid && is_numeric($pid))){
		       $this->error('数据类型错误！');
		   }
		   $map["pid"]=$pid;
		   $list=db("area")->where($map)->order("weight",'desc')->select();
		   return $list;
         
   }
}
