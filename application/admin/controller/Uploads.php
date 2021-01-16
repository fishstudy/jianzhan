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
use think\Config;
use think\Upload;
class Uploads extends Admin{

	public $uploader = null;

	/* 上传图片 */
	public function upload(){
		session('upload_error', null);
		/* 上传配置 */
		$setting = config('EDITOR_UPLOAD');

		/* 调用文件上传组件上传文件 */
		$this->uploader = new Upload($setting, 'Local');
			//addUserLog (  var_export($_FILES, true ), 1);
		$info= $this->uploader->upload($_FILES);
		
		if($info){
			
			$EDITOR_UPLOAD=config('EDITOR_UPLOAD');
			$url = $EDITOR_UPLOAD['rootPath'].$info['imgFile']['savepath'].$info['imgFile']['savename'];
			$url = str_replace('./', '/', $url);
			$info['fullpath'] =INSTALL_PATH.$url;
		}
		//session('upload_error', $this->uploader->getError());
		return $info;
	}

	//keditor编辑器上传图片处理
	public function ke_upimg(){
		/* 返回标准数据 */
		$return  = array('error' => 0, 'info' => '上传成功', 'data' => '');
		$img = $this->upload();
		/* 记录附件信息 */
		if($img){
			$return['url'] = $img['fullpath'];
			unset($return['info'], $return['data']);
		} else {
			$return['error'] = 1;
			$return['message']   = session('upload_error');
		}

		/* 返回JSON数据 */
		exit(json_encode($return));
	}

	

}
