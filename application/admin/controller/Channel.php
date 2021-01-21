<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Channel extends Admin{
     /* 分类首页 */
	 public function index(){
        /* 查询条件初始化 */ 
       	$list=$this->getdata();
	    $this->assign('list', $list);
		$this->meta_title="导航管理";
		$this->assign('meta_title', $this->meta_title);;
        return $this->fetch();
    }
	 		/**商品分类菜单调用**/
    public function getdata(){
		$map ['status'] = 1;
		$category =Db::name( 'Channel' )->where($map)->order('id asc')->select( );
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
    /* 编辑导航 */
	public function edit($id){   
	    if($_POST){
		   $Channel = new \app\admin\model\Channel;
           $res=$Channel->allowField(true)->validate(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			   addUserLog("edit_channel",session_uid());
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Channel->getError()?$Channel->getError():"更新失败！";
			  $this->error($error);
		   } 
	   }
	   else{
		 $map['id']=$id;
		 $info=db("Channel")->where($map)->find();
	     $this->assign('info', $info);
		 unset($map);
		 $map['status']=1; 
		 $map['pid']=0;
         $field = 'id,pid,title,sort';
		 $list=db( 'Channel' )->where($map)->field($field)->order("id asc")->select();
	     $this->assign('list', $list);
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑导航";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
	 /* 增加导航 */
	public function add($id=""){  
	   if($_POST){
		  $Channel =new \app\admin\model\Channel;
            // 过滤post数组中的非数据表字段数据
          $res=$Channel->validate(true)->allowField(true)->save($_POST);
	      if($res){
			  addUserLog("add_channel",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Channel->getError()?$Channel->getError():"新增失败！";
			  $this->error($error);
		   } 
	 }
	  else{
		  $map['status']=1; 
		  $map['pid']=0;
          $field = 'id,pid,title,sort';
		  $list=db( 'Channel' )->where($map)->field($field)->order("id asc")->select();
	      $this->assign('list', $list);
		  $this->meta_title="新增导航";
		  cookie("__forward__",input('server.HTTP_REFERER'));
		  $this->assign('meta_title', $this->meta_title);
	      return $this->fetch("channel/edit");
	  }
	}
	 /* 删除导航*/
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Channel")->where($map)->delete();
		if($res){
		   addUserLog("del_channel",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	
}
