<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 1010422715@qq.com All rights reserved.
// +----------------------------------------------------------------------
// | author 烟消云散 <1010422715@qq.com>
// +----------------------------------------------------------------------
namespace Home\Model;
use Think\Model;

/**
 * 优惠券模型
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
class AreaModel extends Model{
	public function getField($id){
        if(!is_numeric($id)){
		         $this->error('ID错误！');
		    }
		$map["id"] =safe_replace($id);
        if(!$map["id"]){
            return '';
        }
	    $info=M("area")->where($map)->find();
        return $info['area'];
    }   
}
