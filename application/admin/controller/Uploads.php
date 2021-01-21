<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Config;
use think\Request;
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

    //keditor编辑器上传图片处理
    public function upimg(Request $request){
        $return  = array('error' => 0, 'info' => '上传成功', 'data' => '');
        $data = [];
        $data['md5']  = md5_file($_FILES['imgFile']['tmp_name']);
        $data['sha1'] = sha1_file($_FILES['imgFile']['tmp_name']);
        $img = $this->upload();

        /* 记录附件信息 */
        if($img){
            $return['url'] = "/".trim($img['fullpath'],'//');
            unset($return['info'], $return['data']);
        } else {
            $return['error'] = 1;
            $return['message']   = session('upload_error');
        }
        $picid= $request->get("picid");
        $obj=new \app\admin\model\Picture;
        $data['path'] =  $return['url'];
        $data['url'] = '';
        $data['status'] = 1;
        $data['create_time'] = time();
        if(!empty($picid)){
           $obj= $obj->find($picid);
           $obj->save($data);
           $return['id'] = $obj->id;
        } else {
            $obj->save($data);
            $return['id'] = $obj->id;
        }
        /* 返回JSON数据 */
        exit(json_encode($return));
    }

	

}
