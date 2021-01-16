<?php
// +----------------------------------------------------------------------
// | 贝云cms内容管理系统 [ 简单 高效 卓越 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.bycms.cn All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：贝云cms内容管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用贝云cms内容管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.bycms.cn
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