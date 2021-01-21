<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\model;
use think\Model;
/**
 * 分类模型
 */
class Slide extends Model{
    protected $insert = ['status' => 1];   
	
	protected function setCreateTimeAttr($value){
        return $value?strtotime($value):time();
    }
	protected function setUpdateTimeAttr($value){
        $update_time  = $value;
        if( !empty($update_time) ){
            $update_time = strtotime($update_time);
            $curent = time();
            if($update_time < $curent){
                $update_time = $curent;
            }
        } else {
            $update_time = time();
        }
        return $update_time;
    }

}
