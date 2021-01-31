<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\api\validate;
use think\Validate;
use think\Db;

class UserLogin extends Validate{
  protected $rule = [
        'username'      => 'require',
        'password'      => 'require',
    ];
    protected $message = [
        'username.require'                       => '账号不能为空',
        'password.require'                       => '密码不能为空',
    ];

    public $exception = [
        '账号不能为空'                 =>'11101' ,
        '密码不能为空'                 =>'11102' ,
    ];

}
