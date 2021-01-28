<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\api\controller;

use think\Db;
use think\Controller;
use app\api\controller\Base;
use app\api\model\Area as AreaModel;
use app\api\model\User as UserModel;
use think\Request;

/**
 * 城市控制器
 *
 *
 */
class Area extends Base{

	/**
     * 新增城市
     * 参数说明：
     *  title=> 城市名称
     *  pid => 父ID
     *  weight => 权重
     * 请求方式 post
     * http://huiminschool.dev.com:8088/api/area/add
     *
     */
	public function add(){
	    $this->checkToken();
        $data= ['code'=>0,'data'=>[],'msg'=>''];
	    $addAry = input("post.");
	    $area= new AreaModel();
	    $area->save($addAry);
	    if(!empty($area)){
	        $data['data'] =$area->toArray();
        } else{
	        $data['code'] = '20001';
	        $data['msg'] = '添加城市失败';
        }

        return json($data);
	}

    /**
     * 根据城市ID 获取城市信息
     * 请求方式 GET
     * 参数 id 城市ID
     * 路径：http://huiminschool.dev.com:8088/api/area/detail?id=820002
     */
    public function detail(){
        $this->checkToken();
        $data= ['code'=>0,'data'=>[],'msg'=>''];
        $id= intval(input('get.id'));
        if($id<1){
            $data['code'] = '20001';
            $data['msg'] = '城市ID输入有误';
            return  json($data);
        }
        $area= AreaModel::find($id);
        if(!empty($area)){
            $data['data']= $area->toArray();
        }else {
            //empty
        }
        return json($data);
    }

    /**
     *  城市信息修改
     *  title=> 城市名称
     *  pid => 父ID
     *  weight => 权重
     *   id 城市ID
     * 请求方式 post
     * http://huiminschool.dev.com:8088/api/area/edit
     */
    public function edit()
    {
        $this->checkToken();
        $data= ['code'=>0,'data'=>[],'msg'=>''];
        $upAry = input("post.");
        if(empty($upAry['id'])){
            $data['code'] = '20003';
            $data['msg'] = '用户ID不能为空';
            return json($data);
        }
        $area= AreaModel::find($upAry['id']);
        if(!empty($area)){
            unset($upAry['id']);
            $area->save($upAry);
            $data['data']= $area->toArray();
        }else {
            //empty
        }

        return json($data);
    }

    /**
     * 根据城市ID 删除城市信息
     * 请求方式 GET
     * 参数 id 城市ID
     * 路径：http://huiminschool.dev.com:8088/api/area/delete?id=820001
     *
     */
    public function delete(){
        $this->checkToken();
        $data= ['code'=>0,'data'=>[],'msg'=>''];
        $id= intval(input('get.id'));
        if($id<1){
            $data['code'] = '20001';
            $data['msg'] = '城市ID输入有误';
            return  json($data);
        }
        $area= AreaModel::find($id);
        if(!empty($area)){
           $area->delete();
        }else {
            //empty
        }
        return json($data);
    }

    /**
     * 验证用户请求有没有带token （post get header都可以）
     *
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function checkToken(){
        $data= ['code'=>0,'data'=>[],'msg'=>''];
        $param = input("param.");
        $header = input('server.');
        if( isset($param['token']) ){
            $token = $param['token'];
        }
        if( isset($header['HTTP_TOKEN']) ){
            $token = $header['HTTP_TOKEN'];
        }
        if(empty($token)){
            $data['code'] = '40001';
            $data['msg'] = '接口访问需要token';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }
        $user= UserModel::where("token",'=',$token)->find();
        if(!empty($user)){
            $data= $user->toArray();
        }else {
            $data['code'] = '40002';
            $data['msg'] = 'token无效或token不存在';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }


    }


}



