<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\model;
use think\Model;
use think\Db;
/**
 * 分类模型
 */
class Document extends Model{
  
     protected $auto = ["create_time","update_time","uid",'status'];
     protected $insert = ["create_time","update_time","uid"];  
     protected $update = ["update_time","uid"];
     protected function setCreateTimeAttr(){
		   $create_time  = input('create_time');
		   return $create_time?strtotime($create_time):time();
		
    }

    protected function setStatusAttr(){
         //1:正常，2禁用 新增文章默认禁用
        $status = input('status');
        return $status?$status:2;

    }
	protected function setUidAttr(){
		return is_login();
    }

    protected function setUpdateTimeAttr(){
		   $update_time  = input('update_time');
		   if( !empty($update_time) ){
               $update_time = strtotime($update_time);
               $curent = time();
               if($update_time < $curent){
                   $update_time = $curent;
               }
           } else {
               $update_time = time();
           }
		   return $update_time;
    }
    /**
     * 获取详情页数据
     * @param  integer $id 文档ID
     * @return array       详细数据
     */
    public function getInfo($id){
        /* 获取基础数据 */
	
		$map["id"]=$id;
        $info =Db::name("Document")->where($map)->field(true)->find();
        if(!(is_array($info) || 1 !== $info['status'])){
            $this->error('文档被禁用或已删除！');
            //return false;
        }	
		
        /* 获取模型数据 */
		$name  = get_models($info["model_id"],'name');
		$merge = Db::name($name)->find($id);
        if($merge){
			$info = array_merge($info, $merge);
		}
        return $info;
    }

    /**
     * 新增或更新一个文档
     */
    public function updatePost($id = null){
          $Document =new \app\admin\Model\Document;
		  if(!$_POST['id']){ //新增属性{

				 $res=$Document->validate(true)->allowField(true)->save($_POST);
				 if(!$res){
					 $error=$Document->getError()?$Document->getError():"新增失败";
					 $this->error=$error;
			         return false;
				 }
				 $id= $Document->getLastInsID();

		  }else{
		     $res=$Document->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
		     if(!$res){
					 $error=$Document->getError()?$Document->getError():"更新失败1";
					 $this->error=$error;
			         return false;
			 }
	     }
        /* 添加或新增扩展内容 */
        $class = $this->getClass($_POST['model_id']);
		$type=get_models($_POST['model_id'],'type');
		if($type===1){
        if ($id) {//新增数据
            $res =$class->allowField(true)->save($_POST);
            if (!$res) {
				 $map["id"]=$id;
				 Db::name("Document")->delete($id);
                 $this->error = '新增数据失败！';
                 return false;
            }
        } else { //更新数据
            $status = $class->allowField(true)->save($_POST,['id' =>$_POST['id']]);
            if (false === $status) {
                $this->error = '更新数据失败2！';
                return false;
            }
         }
		}
        return true;
		
    }

    /**
     * 获取扩展模型对象
     * @param  integer $model 模型编号
     * @return object         模型对象
     */
    public function getClass($id){
        $name  =get_models($id,'name');
		$class=substr($name,0,1);
		$name=strtoupper($class).substr($name,1);
        $class =  'app\admin\model\\' . $name;
        return new $class;
    }

    public function getError(){
       
        return $this->error;
    }
}
