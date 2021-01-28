<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\api\model;
use think\Model;
use think\Db;
/**
 * 文档基础模型
 */
class User extends Model{

     protected $auto = ["create_time"];
     protected $insert = ["create_time"];
     protected $update = ["create_time","update_time"];

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
