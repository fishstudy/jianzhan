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
class Document extends Model{
  
	 public function getList($map){
            ;   
			 $data = db('category')->where($map)->select();
			
			 foreach($data as $n=>$v){;
                    $pid=$v["id"];
                    $Category=new \app\index\model\Category;
		            $ids=$Category->getChildrenId($pid);
					$where["category_id"]=["in",$ids];
					$where['status'] = 1;
			        $data[$n]["data"]=Db::name('document')->where($where)->order('id desc')->select();
					
			 }
		   

        return $data;
    }
	
}
