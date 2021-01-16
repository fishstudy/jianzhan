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
namespace app\index\controller;
use think\Controller;
use think\Db;
class Index extends Base{
    
	public function index(){     
	   
     
        unset($map);
	    //三栏新闻
		$Document=new \app\index\model\Document;
        $map["id"]=array("in","12,13,14");
		$list=$Document->getList($map);
		$this->assign ( 'list', $list);

		//教学成果
		unset($map);
		$map["category_id"]=9;
		$data1=lists("document",$map,7,"position desc,id desc");
        $this->assign ( 'data1', $data1);
        //招生问答
		unset($map);
		$map["category_id"]=8;
		$data2=lists("document",$map,7,"position desc,id desc");
        $this->assign ( 'data2', $data2);
        //就业明星
		unset($map);
		$map["category_id"]=7;
		$data3=lists("document",$map,10,"position desc,id desc",'title,id,uid,cover_id');
//		echo '<pre>';
//		print_r($data3);
//		die();
        $this->assign ( 'data3', $data3);
		//校园风采
		unset($map);
		$map["category_id"]=11;
		$data4=lists("document",$map,9,"position desc,id desc");
        $this->assign ( 'data4', $data4);
        //专业
        unset($map);
        $map["category_id"]=3;
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
