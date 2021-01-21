<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Document extends Validate{
  protected $rule = [
        'title'  =>  'require|max:225',
		
		
        
    ];

    protected $message = [
        'title.require'  =>  '标题必须',
        'content.require'  =>  '内容必须',
		
    ];

    protected $scene = [
        'add'   =>  ['title','content'],
        'edit'  =>  ['title','content'],
    ];   
	
}
