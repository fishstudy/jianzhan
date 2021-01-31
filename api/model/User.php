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

    public $exception = [
        '账号不能为空'                 =>'10101' ,
        '账号只能为5~20位数字或字母'     =>'10102' ,
        # '该账号已被注册'                =>'10103' ,
        '密码不能为空'                 =>'10111' ,
        '密码只能为5~20位数字或字母'     =>'10122' ,
        #'两次密码不一致'               =>'10123' ,
        '手机号不能为空'               =>'10131' ,
        '手机号不正确'                 =>'10132' ,
        '手机号已被注册'               =>'10133' ,
        '性别不能为空'                 =>'10141' ,
        '性别不正确'                  =>'10142' ,
        '用户昵称不能为空'             =>'10151' ,
        '用户昵称只能为5~20位数字或字母' =>'10152' ,
        '年龄必须是1~120以内的数字'     =>'10161' ,
        '提交时间不能为空'             =>'10171' ,
        '提交时间格式不正确'            =>'10172' ,
    ];

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
