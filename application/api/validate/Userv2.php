<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\api\validate;
use think\Validate;
use think\Db;

class Userv2 extends Validate{
  protected $rule = [
        'username'      => 'require|max:20|min:5',
        'password'      => 'require|max:20|min:5',
        'password2'     => 'require',
        'sex'           => 'require|in:1,2',
        'mobile'        => 'require|number|max:11|min:11',
        'nickname'      =>  'require|max:20|min:5',
        'age'           =>  'number|between:1,120',
        'submit_time'   =>  'require|dateFormat:Y-m-d H:i:s',
    ];

    protected $message = [
        'username.require'                       => '注册账号不能为空',
        'username.min'                           => '账号只能为5~20位数字或字母',
        'username.max'                           => '账号只能为5~20位数字或字母',
        'password.require'                       => '注册密码不能为空',
        'password2.require'                      => '确认密码不能为空',
        'password.min'                           => '密码只能为5~20位数字或字母',
        'password.max'                           => '密码只能为5~20位数字或字母',
        'mobile.require'                         => '手机号不能为空',
        'mobile.number'                          => '手机号不正确',
        'mobile.max'                             => '手机号不正确',
        'mobile.min'                             => '手机号不正确',
        'sex.require'                            => '性别不能为空',
        'sex.in'                                 => '性别不正确',
        'nickname.require'                       => '用户昵称不能为空',
        'nickname.min'                           => '用户昵称只能为5~20位字母、数字或汉字',
        'nickname.max'                           => '用户昵称只能为5~20位字母、数字或汉字',
        'age.number'                             => '年龄必须是1~120以内的数字',
        'age.between'                            => '年龄必须是1~120以内的数字',
        'submit_time.require'                    => '提交时间不能为空',
        'submit_time.dateFormat'                 => '提交时间格式不正确',

    ];

    protected $scene = [
        'add'   =>  ['username','password','sex','mobile','nickname'],
        'edit'  =>  ['username','password','sex','mobile','nickname'],
    ];

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

}
