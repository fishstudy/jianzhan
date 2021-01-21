<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Document extends Admin{
    public function index(){     
          if($_GET){
			foreach ($_GET as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		$pid=input('pid');
		if(empty($pid)){
            $pid = input("category_id");
        }
        if(isset($pid)){
			$Category=new \app\admin\model\Category;
            //当前id及子类列表
			$cate_ids  = $Category->getChildrenId($pid);
			$this->assign("cate_ids",$cate_ids);
			$map["category_id"]=array("in",$cate_ids);
			//当前id
			
        }
		$res=getLists('Document',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="文章管理";
		$this->assign('meta_title', $this->meta_title);
		$sidebar=db("category")->field("id,title,pid")->select();
		foreach ($sidebar as & $value){
            $value["name"]  =   $value['title'];
			$value["url"]  =url('document/index',array('pid'=>$value["id"]));
        }
       $this->assign('sidebar', json_encode( $sidebar));
       // $this->assign('sidebar',  $sidebar);

		$pid=$pid?$pid:1;
		$this->assign("pid",$pid);
		$this->assign("category_id",$pid);
	    return $this->fetch();
	}

   public function edit($id){
	    if($_POST){ 
		   $Document = new \app\admin\model\Document;
		   $res=$Document->updatePost();
	       if($res){
			   addUserLog("edit_document",session_uid());
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			   $error=$Document->getError()?$Document->getError():"更新失败！";
			    $this->error($error);
		   } 
	  }
	  else{
		    $map['id']=$id;
            /* 获取数据 */
             $Document=new \app\admin\model\Document;
             $info=$Document->getInfo($id); 
			
             $pid=$info["category_id"];
		     if($pid){
				 $this->assign('pid',$pid); 
			     $category=new \app\admin\model\Category;
			     $ids=$category->getParentId($pid);
				 array_push($ids,$pid);
			     $this->assign("ids",$ids);
             }
			 unset($map);
			 $Attributes=new \app\admin\model\Attributes;
			 $list = $Attributes->getList($info["model_id"]);
             $this->assign('list', $list);
             $sidebar=db("category")->field("id,title,pid")->select();
			 foreach ( $sidebar as &$value){
					$value["name"]  =   $value['title'];
					$value["url"]  =url('document/index',array('pid'=>$value["id"]));
			 }
			 cookie("__forward__",input('server.HTTP_REFERER'));
			 $this->assign('sidebar', json_encode($sidebar));
		     $this->meta_title="编辑文章-".$info["title"];
		     $this->assign('meta_title', $this->meta_title);
			 $this->assign('info', $info);
	         return $this->fetch();
	   }
	}
    public function add($id=""){  
	    if($_POST){
		   $Document =  new \app\admin\model\Document;
           // 过滤post数组中的非数据表字段数据
		   $res=$Document->updatePost();
	         if($res){
			  addUserLog("add_document",session_uid());
             $this->success('新增成功',cookie("__forward__"));
		  }else{
			 $error=$Document->getError()?$Document->getError():"新增失败！";
			    $this->error($error);
		  } 
	   }
	  else{
		    $pid=input('pid');
		     if($pid){
				$this->assign('pid',$pid); 
			    $info["category_id"]=$pid;
			    $this->assign('info',$info); 
				$Category=new \app\admin\model\Category;
			    $ids=$Category->getParentId($pid);
				array_push($ids,$pid);
			    $this->assign("ids",$ids);
            } 
		    $map["id"]=$pid;
			$cate =db('category')->where($map)->find();
			$this->assign("cate",$cate);
			cookie("__forward__",input('server.HTTP_REFERER'));
			unset($map);
			$sidebar=db("category")->field("id,title,pid")->select();
			foreach ( $sidebar as &$value){
					$value["url"]  =url('document/index',array('pid'=>$value["id"]));
			}
		    $this->assign('sidebar', json_encode($sidebar));
            $Attributes=new \app\admin\model\Attributes;
			$list = $Attributes->getList($cate["model_id"]);
            $this->assign('list', $list);
            $cate_list=$this->getCategory();
	        $this->assign('cate_list', $cate_list);
			$this->meta_title="新增文章";
		    $this->assign('meta_title', $this->meta_title);
	       return $this->fetch();
	  }
	}
	
   //切换分类
    public function change($pid){
	   $field="id,pid,title";
       $pid=input('pid'); // 用intval过滤$_POST['pid']
	   $map["pid"]=$pid; 
	
	   if($data=db("category")->where($map)->field($field)->select()){
		   exit(json_encode($data));
	   }
   }
   public function getCategory(){
	    
		$field = 'id,pid,title,status,sort';
		$category =db( 'category' )->field($field)->order('id asc')->select( );
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
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Document")->where($map)->delete();
		if($res){
			 addUserLog("del_document",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}



}