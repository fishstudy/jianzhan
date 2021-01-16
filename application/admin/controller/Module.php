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
namespace app\admin\controller;
use think\Controller;
use think\Db;

class Module extends Admin{
    public function index(){     
       if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map["pid"]=input("pid")?input("pid"):0;
		
        $res=getLists('module',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="模块管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
	
		 		/**商品分类菜单调用**/
 public function getCategory(){
	  
		$field = 'id,pid,title,status,sort,url,group_id,font';
		$category =db( 'Module' )->field($field)->order('sort asc,id asc')->select( );
		$list = $this->unlimitedForLevel($category);
		return $list;
		}
 public function unlimitedForLevel($cate,$name = 'child',$pid = 0){
		$arr = array( );
		foreach ( $cate as $key => $v ) {
		//判断，如果$v['pid'] == $pid的则压入数组Child
			if ($v['pid'] == $pid) {
			//递归执行
				$v[$name] = self::unlimitedForLevel($cate,$name,$v['id']);
				$arr[] = $v;
			}
		}
		return $arr;
	}

	public function edit($id){   
	    if($_POST){
		   $Module = new \app\admin\model\Module;
           $res=$Module->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			  addUserLog("edit_module",session_uid());
		      $this->success("更新成功！",'Module/index');
		   }else{
			    $error=$Module->getError()?$Module->getError():"更新失败！";
			    $this->error($error);
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("Module")->where($map)->find();
	     $this->assign('info', $info);
		 unset($map);
		 $list =db('Module')->select(); 
	     $this->assign('list', getSort($list));;
		 $group_list =db('group')->select(); 
            /* 获取模块信息 */
         $this->assign('group_list', $group_list);
		 $this->meta_title="编辑模块-".$info["title"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
	public function add($pid=""){  
	  if($_POST){
		   $Module = new \app\admin\model\Module;
        // 过滤post数组中的非数据表字段数据
       $res=$Module->validate(true)->allowField(true)->save($_POST);
	   if($res){
		    addUserLog("add_module",session_uid());
		   $this->success("新增成功！");
		}else{
			 $error=$Module->getError()?$Module->getError():"新增失败！";
			 $this->error($error);
		} 
	}
	  else{
		if($pid){
             $info['pid']=$pid;
			 $this->assign('info', $info);
         }
	     $list =db('Module')->select(); 
	     $this->assign('list', getSort($list));
		 $this->meta_title="新增模块"; 
		 $group_list =db('group')->select(); 
            /* 获取模块信息 */
         $this->assign('group_list', $group_list);
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("Module/edit");
	  }
	}
	 public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		
		$res=db("Module")->where($map)->delete();
		if($res){
		   addUserLog("del_module",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	
}
