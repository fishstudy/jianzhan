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
namespace app\common\taglib;
use think\template\TagLib;
use  think\Db;
/**
 * 优惠券模型
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
class Yer extends TagLib {

 /**
     * 定义标签列表
     */
      protected $tags   =  [
        // 标签定义： attr 属性列表 close 是否闭合（0 或者1 默认1） alias 标签别名 level 嵌套层次
        'close'     => ['attr' => 'time,format', 'close' => 0], //闭合标签，默认为不闭合
        'open'      => ['attr' => 'name,type', 'close' => 1], 
		'position'     => ['attr' =>'pos,name', 'close' => 1],

    ];

    /**
     * 这是一个闭合标签的简单演示
     */
    public function tagClose($tag)
    {
        $format = empty($tag['format']) ? 'Y-m-d H:i:s' : $tag['format'];
        $time = empty($tag['time']) ? time() : $tag['time'];
        $parse = '<?php ';
        $parse .= 'echo date("' . $format . '",' . $time . ');';
        $parse .= ' ?>';
        return $parse;
    }
	 /**
     * volist标签解析 循环输出数据集
     * 格式：
     * {volist name="userList" id="user" empty=""}
     * {user.username}
     * {user.email}
     * {/volist}
     * @access public
     * @param array $tag 标签属性
     * @param string $content 标签内容
     * @return string|void
     */
     /* 推荐位列表 */
    public function tagPosition($tag, $content){
        $pos    = $tag['pos'];
        $name   = $tag['name'];
        $parse = '<?php ';
       
        $parse .= '$__LIST__= ad(' . $pos  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }

}