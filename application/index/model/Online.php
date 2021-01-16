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
namespace app\index\model;
use think\Model;
use think\Db;
/**
 * 文档基础模型
 */
class Online extends Model{

     protected $auto = ["create_time","uid","content","key"];
     protected $insert = ["create_time","uid","content","key"];  
     protected $update = ["create_time","update_time","uid","content","key"];  
     protected function setCreateTimeAttr()
    {
		
		return time();
		
    }
	protected function setUidAttr()
    {
		
		return is_login();
		
    }
    protected function setContentAttr()
    {
		
		return safe_replace(input('content'));
		
    }

     protected function setKeyAttr()
    {
		
		return safe_replace(input('key'));
		
    }
}
