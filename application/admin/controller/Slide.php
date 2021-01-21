<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Slide extends Admin{ 
    public function index(){     
         if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
        $res=getLists('Slide',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="幻灯片管理";
		$this->assign('meta_title', $this->meta_title);
        $search_place=input('place');
		$this->assign('search_place', $search_place);
	    return $this->fetch();
	}
	
	public function edit($id){   
	    if($_POST){
		   $Slide = new \app\admin\model\Slide;
           $res=$Slide->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			  addUserLog("edit_slide",session_uid());
		      $this->success("更新成功",cookie("__forward__"));
		   }else{
			    $error=$Slide->getError()?$Slide->getError():"更新失败";
			    $this->error($error);
		   } 
	  } else{
		 $map['id']=$id;
		 $info=db("Slide")->where($map)->find();
	     $this->assign('info', $info);
		 unset($map);
		 $map["pid"]=0;
         $list=db('category')->where($map)->select();
		 $this->assign('list',$list);
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑-".$info["title"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
    public function add($id=""){  
	    if($_POST){
		   $Slide =  new \app\admin\model\Slide;
           // 过滤post数组中的非数据表字段数据
           $res=$Slide->validate(true)->allowField(true)->save($_POST);
	     if($res){
			    addUserLog("add_slide",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Slide->getError()?$Slide->getError():"新增失败";
			  $this->error($error);
		  } 
	   } else{
		 cookie("__forward__",input('server.HTTP_REFERER'));
         $map["pid"]=0;
		 $list =db('category')->where($map)->select();
		 $this->assign('list',$list);
		 $this->meta_title="新增幻灯片";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("slide/add");
	  }
	}   //切换分类
    public function change($pid){
	   $field="id,pid,title";
       $pid=input('pid'); // 用intval过滤$_POST['pid']
	   $map["pid"]=$pid; 
	   $data=db("category")->where($map)->field($field)->select();
	   if($data){
		   exit(json_encode($data));
	   }
   }
	public function del(){
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Slide")->where($map)->delete();
		if($res){
		   addUserLog("del_slide",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
}
