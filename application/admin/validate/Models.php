<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Models extends Validate{
 protected $rule = [
        'title'  =>  'require|max:25',
		'name'  =>  'require|max:225',
		
        
    ];

    protected $message = [
        'title.require'  =>  '名称必须',
        'name.require'  =>  '英文字母必须',
		
    ];

    protected $scene = [
        'add'   =>  ['title','name'],
        'edit'  =>  ['title','name'],
    ];  
	
}
