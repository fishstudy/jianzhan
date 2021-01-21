<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;

class Ucenter extends Admin{
    public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		$res=getLists('UcenterMember',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="用户管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
	

  
	public function edit($id=""){   
	    if($_POST){
		   $UcenterMember= new \app\admin\model\UcenterMember;
           $res=$UcenterMember->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			  addUserLog("edit_ucenterMember",session_uid());
		      $this->success("更新成功！");
		   }else{
			   $error=$UcenterMember->getError()?$UcenterMember->getError():"更新失败";
			   $this->error($error);
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=Db::name("UcenterMember")->where($map)->find();
	     $this->assign('info', $info);
		 $this->meta_title="编辑-".$info["username"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
	public function add($id=""){  
	  if($_POST){
		   $UcenterMember= new \app\admin\model\UcenterMember;
        // 过滤post数组中的非数据表字段数据
           $res=$UcenterMember->validate(true)->allowField(true)->save($_POST);
	   if($res){
		    addUserLog("add_ucenterMember",session_uid());
		   $this->success("新增成功！");
		}else{
			 $error=$UcenterMember->getError()?$UcenterMember->getError():"新增失败";
			  $this->error($error);
		} 
	}
	  else{
		
		 $this->meta_title="新增配置";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("edit");
	  }
	}
	public function encrypt($password=""){  
	     $key=config('database.key');
	     return ucenter_md5($password, $key);
	}
	 public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		
		$res=Db::name("UcenterMember")->where($map)->delete();
		if($res){
		   addUserLog("del_ucenterMember",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	
}
