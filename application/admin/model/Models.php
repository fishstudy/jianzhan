<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\model;
use think\Model;
use think\Db;
/**
 * 文档基础模型
 */
class Models extends Model{
     protected $auto = ["base","extend","json"];
     protected $insert = ["base","extend","json"];  
     protected $update = ["base","extend","json"];  
     protected function setBaseAttr(){
		  if(input('json/a')){ 
	        return implode(",",$_POST['json'][1]);
	      }else{
		     $map["model_id"]=1;
			 $list=Db::name('Attributes')->where($map)->select();
			 $arr=array();
			 foreach($list as $n=>$v){;
			      array_push($arr,$v["id"]);
			 } 
			 return implode(",",$arr);
		  }
		
    }

	protected function setJsonAttr(){
		   
		  if(input('json/a')){ 
	        return json_encode($_POST['json']);
	      }else{
		     $map["model_id"]=1;
			 $list=Db::name('Attributes')->where($map)->select();
			 $arr=array();
			 foreach($list as $n=>$v){;
			      array_push($arr,$v["id"]);
			 } 
			 return implode(",",$arr);
		  }
		
    }
	 /**
     * 新建表
     */
     public function updatePost(){

          $Models =new \app\admin\Model\Models;
		  if(!$_POST['id']){ //新增属性{
				 $res=$Models->validate(true)->allowField(true)->save($_POST);
				 if(!$res){
					 $error=$Models->getError()?$Models->getError():"新增失败";
					 $this->error=$error;
			         return false;
				 }
				 $table_name =  config('database.prefix').strtolower($_POST['name']);

			 $sql = "CREATE TABLE `".$table_name."` (
			  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
			  PRIMARY KEY (`id`)
			) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='".$_POST['title']."表';
			" ;
            $res=Db::execute($sql);

		  }else{
		     $res=$Models->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
		     if(!$res){
					 $error=$Models->getError()?$Models->getError():"更新失败";
					 $this->error=$error;
			         return false;
			 }
		  }
        return true;
    }
    protected function setExtendAttr(){
		  if(input('json/a')){ 
	        return implode(",",$_POST['json'][2]);
	      }	
		
    }  
}
