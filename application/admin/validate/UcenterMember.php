<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class UcenterMember extends Validate{
  protected $rule = [
        'username'  =>  'require|max:225',
		'password'  =>  'require|max:225', 
    ];

    protected $message = [
        'username.require'  =>  '名称必须',
        'password.require'  =>  '密码必须',
    ];

    protected $scene = [
        'add'   =>  ['username','password'],
        'edit'  =>  ['username','password'],
    ];   
	
}
