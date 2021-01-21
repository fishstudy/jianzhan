<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\index\model;
use think\Model;
use think\Db;
/**
 * 分类模型
 */
class Channel extends Model{
 
    /**商品分类垂直菜单调用**/
    public function getCategory(){
		$field = 'id,sort,pid,title,url,target';
		$condition['status']=1;
		$category = $this->field($field)->order('sort asc,id asc')->where($condition)->select( );
		$list = $this->xunhuan($category);
		return $list;
	}


   public function xunhuan($cate,$name = 'items',$pid = 0){
		$arr = array( );
		   foreach ( $cate as $key => $v ) {
		   //判断，如果$v['pid'] == $pid的则压入数组Child
		       if ($v['pid'] == $pid) {
					//递归执行
					$v[$name] = self::xunhuan($cate,$name,$v['id']);
					$arr[] = $v;
		       }
		   }
		return $arr;
	}



}
