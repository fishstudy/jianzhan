<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Channel extends Validate{
  protected $rule = [
        'title'  =>  'require|max:225',
		'url'  =>  'require|max:225', 
    ];

    protected $message = [
        'title.require'  =>  '名称必须',
        'url.require'  =>  '链接必须',
    ];

    protected $scene = [
        'add'   =>  ['title','url'],
        'edit'  =>  ['title','url'],
    ];   
	
}
