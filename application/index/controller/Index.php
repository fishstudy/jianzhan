<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\index\controller;
use think\Controller;
use think\Db;
class Index extends Base{
    
	public function index(){     
	   echo "维护中，敬请期待！！！";
     
        unset($map);
	    //三栏新闻
		$Document=new \app\index\model\Document;
        $map["id"]=array("in","12,13,14");
		$list=$Document->getList($map);
		$this->assign ( 'list', $list);

		//教学成果
		unset($map);
		$map["category_id"]=9;
		$map['status'] = 1;
		$data1=lists("document",$map,7,"position desc,id desc");
        $this->assign ( 'data1', $data1);
        //招生问答
		unset($map);
		$map["category_id"]=8;
        $map['status'] = 1;
		$data2=lists("document",$map,7,"position desc,id desc");
        $this->assign ( 'data2', $data2);
        //就业明星
		unset($map);
		$map["category_id"]=7;
        $map['status'] = 1;
		$data3=lists("document",$map,10,"position desc,id desc",'title,id,uid,cover_id');

        $this->assign ( 'data3', $data3);
		//校园风采
		unset($map);
		$map["category_id"]=11;
        $map['status'] = 1;
		$data4=lists("document",$map,9,"position desc,id desc");
        $this->assign ( 'data4', $data4);
        //专业
        unset($map);
        $map["category_id"]=3;
        $map['status'] = 1;
        $data5=lists("document",$map,5,"position desc",'id,title,position,description');
        $this->assign ( 'profession', $data5);
		//统计
		addCount("visitor","访客数+1");		
		$meta_title="首页";
		$this->assign('meta_title', $meta_title);
	    return $this->fetch();
	}
	public function online(){     
	   //顶级栏目
		$Category=new \app\index\model\Category;
		$tree=$Category->maketree(2) ;
		$this->assign ( 'tree', $tree );
		//统计
		addCount("visitor","访客数+1");		
		$meta_title="首页";  
		$this->assign('meta_title', $meta_title);
		$map["pid"]=0;
		$list=db("area")->where($map)->order("weight",'desc')->select();
        $this->assign('list', $list);
		unset($map);
		$map["category_id"]=3;
		$prolist=db("document")->where($map)->select();
        $this->assign('prolist', $prolist);
		cookie("__forward__",input('server.HTTP_REFERER'));
	    return $this->fetch();
	}
	
	public  function change($pid = 0){

		   $pid=input('pid'); 	
           if(!($pid && is_numeric($pid))){
		       $this->error('数据类型错误！');
		   }
		   $map["pid"]=$pid;
		   $list=db("area")->where($map)->select();
		   return $list;
         
   }
}
