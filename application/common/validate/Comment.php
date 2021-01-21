<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\common\validate;
use think\Validate;

class Comment extends Validate{
  protected $rule = [
        'content'  =>  'require|max:225',
        
    ];

    protected $message = [
        
        'content.require'  =>  '内容必须',
		
    ];

    protected $scene = [
        'add'   =>  ['content'],
        'edit'  =>  ['content'],
    ];   
	
}
