<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\index\model;
use think\Model;
use think\Db;
/**
 * 文档基础模型
 */
class Online extends Model{

     protected $auto = ["create_time","uid","content","key"];
     protected $insert = ["create_time","uid","content","key"];  
     protected $update = ["create_time","update_time","uid","content","key"];  
     protected function setCreateTimeAttr()
    {
		
		return time();
		
    }
	protected function setUidAttr()
    {
		
		return is_login();
		
    }
    protected function setContentAttr()
    {
		
		return safe_replace(input('content'));
		
    }

     protected function setKeyAttr()
    {
		
		return safe_replace(input('key'));
		
    }
}
