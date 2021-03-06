<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Friendlink extends Admin{
    public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
        $res=getLists('Friendlink',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="友情链接管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}

	public function edit($id){   
	    if($_POST){
		   $Friendlink = new \app\admin\model\Friendlink;
           $res=$Friendlink->allowField(true)->validate(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			   addUserLog("edit_Friendlink",session_uid());
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Friendlink->getError()?$Friendlink->getError():"更新失败！";
			  $this->error($error);
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("Friendlink")->where($map)->find();
	     $this->assign('info', $info);
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑友情链接";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}

	public function add($id=""){  
	   if($_POST){
		  $Friendlink =new \app\admin\model\Friendlink;
            // 过滤post数组中的非数据表字段数据
          $res=$Friendlink->validate(true)->allowField(true)->save($_POST);
	      if($res){
			  addUserLog("add_Friendlink",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Friendlink->getError()?$Friendlink->getError():"新增失败！";
			  $this->error($error);
		  } 
	   }
	   else{
		  cookie("__forward__",input('server.HTTP_REFERER'));
		  $this->meta_title="新增友情链接";
		  $this->assign('meta_title', $this->meta_title);
	      return $this->fetch("Friendlink/edit");
	   }
	}

	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Friendlink")->where($map)->delete();
		if($res){
		   addUserLog("del_Friendlink",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
}
