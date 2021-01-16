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
use think\Db;
/**
 * 获取分类名称
 * @param id $id   传入分类的id
 * @return string
 */
function get_category_title($id){
   
	$map['id']=$id;
	$info=Db::name("category")->where($map)->find();
    return $info['title'];  
}
function get_comment($id,$field = null){
   
	$map['id']=$id;
	$info=Db::name("comment")->where($map)->find();
    return $info[$field];  
}		
/**
 * 标签库解析广告位标签
 * @param int $place   传入广告的位置
 * @return string
 */
function  parseAd($place){
	$map['place']=$place;
	$list=Db::name("ad")->where($map)->select();
    return $list;  
}
/**
 * 标签库解析推荐位标签
 * @param id $position   传入推荐位
 * @return string
 */	
function  parsePos($pos){
   
	$map['position']=$pos;
	$list=Db::name("document")->where($map)->select();
    return $list;  
}
/**
 * 标签库解析知道分类下位置标签
 * @param id $id   传入分类的id
 * @return string
 */
function  parseCate($id,$order,$limit){
	$Category=new \app\index\model\Category;
	$ids=$Category->getChildrenId($id);	
    $map['category_id']=array("in",$ids);
	$list=Db::name("document")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析知道分类下位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseMix($ids,$order,$limit){
    $map['category_id']=array("in",$ids);
	$list=Db::name("document")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析知道幻灯片位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseSlide($place,$order,$limit){
    $map['place']=$place;
	$list=Db::name("slide")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析文章位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseRead($model_id,$order,$limit){
    $map['model_id']=$model_id;
	$list=Db::name("document")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析友情链接标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseLink($order,$limit){
   
	$list=Db::name("friendlink")->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析导航位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseChannel($order,$limit){
   
	$list=Db::name("Channel")->order($order)->limit($limit)->select();
    return $list;  
}