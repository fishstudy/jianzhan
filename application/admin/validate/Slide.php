<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Slide extends Validate{
  protected $rule = [
        'title'  =>  'require|max:25',
	
		'cover_id'  => 'require|max:225',
        
    ];

    protected $message = [
        'title.require'  =>  '名称必须',
       
		'cover_id.require'  => '图片必须',
    ];

    protected $scene = [
        'add'   =>  ['title','cover_id'],
        'edit'  =>  ['title','cover_id'],
    ];   
	
}
