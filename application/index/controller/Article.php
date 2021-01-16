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
class Article  extends Base{
	//文章列表
	public function lists($id=""){     
		$id=input('id'); 	
        if(!($id && is_numeric($id))){
		   $this->error('分类ID错误！');
		}else{
		   $where["id"]=$id;
		}	
		$info=db('Category')->where($where)->find();
		if(!$info){
		    $this->error('分类不存在！');
		}
		$Category=new \app\index\model\Category;
		$cid=$Category->getChildrenId($id);	
		$map['category_id']=array("in",$cid);
		$num=$info["list_row"]?$info["list_row"]:10;
        $res=getLists('document',$map,$num,'id desc',"");
	    $this->assign('res', $res);
	
		$ids=$Category->getParentId($id);	
		$this->assign("ids",$ids);
	   //网站标题
		$meta_title=$info["title"];  
		$this->assign('meta_title', $meta_title);
		
		$this->assign("info",$info);
		//列表页模板
		$name=get_models($info['model_id'],'name');
		$tpl="model/".$name."_list";
		$tpl=$info["template_lists"]?$info["template_lists"]:$tpl;
		
		return $this->fetch($tpl);
	}

		//文章明细
	public function detail($id=""){    
		$id=input('id');
        if(!($id && is_numeric($id))){
		   $this->error('分类ID错误！');
		}else{
		   $where["id"]=$id;
		}
		$Document=new \app\admin\model\Document;
        $info=$Document->getInfo($id);
		if(!$info){
		    $this->error('文章不存在！');
		}
		$info["pictures"]=get_pictures($id); 
		db('document')->where('id',$id)->setInc('view');
		$Category=new \app\index\model\Category;
        $pid=$Category->getParentId($info["category_id"]);	
		$this->assign("pid",$pid);	
		
		$meta_title=$info["title"];  
		$this->assign('meta_title', $meta_title);
		$map["doc_id"]=$id;
		$res=getLists('comment',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->assign("info",$info);
	
	    $name=get_models($info['model_id'],'name');
		
		$tpl="model/".$name."_detail";
		$tpl=$info["template_detail"]?$info["template_detail"]:$tpl;
		if($info['model_id']="1"){
			unset($map);
			$map['model_id']="1";
			$map["id"]=array("lt",$id);
            $pre= db('document')->where($map)->order("id desc")->find();
			$this->assign("pre",$pre);
			unset($map["id"]);
            $map["id"]=array("gt",$id);
            $next= db('document')->where($map)->order("id asc")->find();
		    $this->assign("next",$next);
		}
		return $this->fetch($tpl);
	}

		//文章搜素
	public function search($keyword=""){     
		$keyword=safe_replace(input('keyword')); 	
        $map['title']  = array('like','%'.$keyword.'%');
        $res=getLists('document',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$meta_title=$keyword;  
		$this->assign('meta_title', $meta_title);
		$id=input('model_id'); 	
        if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$name=get_models($id,'name');
		if(!$name){
		   $this->error('ID错误！');
		}
		$tpl="model/".$name."_search";
		return $this->fetch($tpl);
	}
	
}