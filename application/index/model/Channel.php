<?php
// +----------------------------------------------------------------------
// | 贝云cms内容管理系统 [ 简单 高效 卓越 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.bycms.cn All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：贝云cms内容管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用贝云cms内容管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.bycms.cn
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
