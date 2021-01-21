<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\index\validate;
use think\Validate;
use think\Db;

class User extends Validate{
  protected $rule = [
        'username'      =>  'require|max:50',
        'sex'           =>  'require',
        'province'      => 'require|max:225',
        'city'          => 'require|max:225',
        'area'          => 'require|max:225',
        'detail'        => 'require|max:225',
		'professional'  =>  'require',
		'idcard'        => 'require|max:20',
	    'education'     =>  'require',
		'mobile'        => 'require|max:225',
    ];

    protected $message = [
        'username.require'       => '姓名必须',
        'sex.require'            => '性别必须',
        'province.require'       => '省份必须',
        'city.require'           => '城市必须',
        'area.require'           => '城市必须',
        'detail.require'         => '城市必须',
        'professional.require'   => '专业必须',
        'idcard.require'         => '身份证号必须',
        'education.require'      => '最高学历',
        'mobile.require'         => '手机号必须'
    ];

    protected $scene = [
        'add'   =>  ['username', 'sex', 'province', 'city', 'area', 'detail', 'professional', 'idcard', 'education', 'mobile'  ],
        'edit'  =>  ['username', 'sex', 'province', 'city', 'area', 'detail', 'professional', 'idcard', 'education', 'mobile'  ],
    ];   
	
}
