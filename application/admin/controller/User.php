<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
use app\index\model\Online;

class User extends Admin{
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
		$map=isset($map)?$map:'';
        $res=getLists('Online',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="报名管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
     /* 编辑报名 */
	public function edit($id){   
	    if($_POST){
		   $User = new Online();
           $res=$User->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			    UserdUserLog("edit_User",session_uid());
		        $this->success("更新成功！",cookie("__forward__"));
		   }else{
			    $error=$User->getError()?$User->getError():"更新失败！";
			    $this->error($error);
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("User")->where($map)->find();
	     $this->assign('info', $info);
		 unset($map);
		 $map['pid']=0;
	     $list =db('category')->where($map)->select(); 
            /* 获取模块信息 */
         $this->assign('list', $list); 
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑报名-".$info["title"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
     /* 增加报名 */
	public function add($id=""){  
	  if($_POST){
		  $User =new Online();
            // 过滤post数组中的非数据表字段数据
          $res=$User->validate(true)->allowField(true)->save($_POST);
	      if($res){
			   UserdUserLog("Userd_User",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$User->getError()?$User->getError():"新增失败！";
			  $this->error($error);
		  } 
	}
	  else{
		  $map['pid']=0;
	      $list =db('category')->where($map)->select(); 
	      $this->assign('list', $list);
		  $this->meta_title="新增报名"; 
		  cookie("__forward__",input('server.HTTP_REFERER'));
		  $this->assign('meta_title', $this->meta_title);
	      return $this->fetch("User/edit");
	  }
	}
    /* 删除报名 */
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Online")->where($map)->delete();
		if($res){
		   UserdUserLog("del_User",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	
}
