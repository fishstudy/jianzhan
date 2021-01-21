<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;

class Attributes extends Admin{
   /**
	 *首页
	 * @param string $name   传入配置英文名称
	 * @return string 配置值
	 */
	public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		if(input('pid')){
           unset($map['pid']); 
		   $map['pid']=input('pid');
        }
		if(input('model_id')){
		   $model_id=input('model_id');
		   $map["model_id"]=$model_id;
        }
		$map=isset($map)?$map:'';
		$res=getLists('Attributes',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="属性管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
   /* 编辑属性 */
   public function edit($id){   
	    if($_POST){
		   $Attributes = new \app\admin\model\Attributes;
           $res=$Attributes->updates();
	       if($res){
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Attributes->getError()?$Attributes->getError():"更新失败";
			  $this->error($error);
		   } 
	  }
	  else{
		     $map['id']=$id;
            /* 获取数据 */
             $info=db('Attributes')->where($map)->find($id);       
             $list =db('models')->select();
		     $this->assign('list',$list);
		     $group_list= C("DOCUMENT_GROUP");
		     $group_list=explode("|",$group_list);
             $this->assign('group_list',$group_list);
			 $this->assign('info', $info);
			 cookie("__forward__",input('server.HTTP_REFERER'));
		     $this->meta_title="编辑属性-".$info["title"];
		     $this->assign('meta_title', $this->meta_title);
	         return $this->fetch();
	   }
	}
	 /* 增加属性 */
    public function add($id=""){  
	    if($_POST){
		   $Attributes = new \app\admin\model\Attributes;
		  $res=$Attributes->updates();
	     if($res){
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Attributes->getError()?$Attributes->getError():"新增失败";
			  $this->error($error);
		  } 
	   }
	  else{
		   $group_list= C("DOCUMENT_GROUP");
		   $group_list=explode("|",$group_list);
           $this->assign('group_list',$group_list);
		   $list =db('models')->select();
		   $this->assign('list',$list);
		   cookie("__forward__",input('server.HTTP_REFERER'));
		   $this->meta_title="新增属性";
		   $this->assign('meta_title', $this->meta_title);
	       return $this->fetch();
	  }
	}
	 /* 删除属性 */
    public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Attributes")->where($map)->delete();
		if($res){
		     $this->success("删除成功！");
		}else{
			 $this->success("删除失败！");
		}
	}
}