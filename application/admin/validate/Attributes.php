<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Attributes extends Validate{
  protected $rule = [
        'title'  =>  'require|max:25',
		
        
    ];

    protected $message = [
        'title.require'  =>  '名称必须',
        
    ];

    protected $scene = [
        'add'   =>  ['title'],
        'edit'  =>  ['title'],
    ];   
	
}
