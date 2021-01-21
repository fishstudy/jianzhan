<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Ad extends Validate{
  protected $rule = [
        'title'  =>  'require|max:25',
		'url'  =>  'require|max:225',
		'place'  => 'require|max:225',
        
    ];

    protected $message = [
        'title.require'  =>  '名称必须',
        'url.require'  =>  '链接必须',
		'place.require'  => '位置必须',
    ];

    protected $scene = [
        'add'   =>  ['title','url','place'],
        'edit'  =>  ['title','url','place'],
    ];   
	
}
