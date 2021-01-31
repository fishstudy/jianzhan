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
use think\cache\driver\Redis;

/**
 * 城市控制器
 *
 *
 */
class Area extends Base{

    /**
     * 初始化城市区域
     * 清空数据库并插入修改和删除的数据
     *
     */
    public function areaInit(){
        $data= ['code'=>0,'data'=>[],'msg'=>'清空数据库，并插入ID为1和2的数据'];
        Db::table("api_area")->query("delete  from api_area where 1");
        Db::table("api_area")->query("INSERT INTO `api_area` (`id`, `title`, `pid`, `weight`) VALUES ('1', '商水', '100', '1')");
        Db::table("api_area")->query("INSERT INTO `api_area` (`id`, `title`, `pid`, `weight`) VALUES ('2', '沈丘', '100', '1')");
        Db::table("api_area")->query("ALTER TABLE `api_area`AUTO_INCREMENT=5;");
        Db::table("api_user")->query("DELETE FROM `api_user` WHERE (`username`='teacherapi')");
        Db::table("api_user")->query("INSERT INTO `api_user` (`username` , `password` , `mobile` , `sex` , `nickname` , `age` , `token` , `create_time` , `update_time` , `status`) VALUES ('teacherapi' , 'e10adc3949ba59abbe56e057f20f883e' , '13381922071' , 1 , '老师自动化测试，请勿删除' , 18 , '' , 1612082736 , 1612082736 , 1) ");
        return json($data);
    }
	/**
     * 新增城市
     * 参数说明：
     *  title=> 城市名称
     *  pid => 父ID
     *  weight => 权重
     *  code 验证码（网络安全用）
     * 请求方式 post
     * http://huiminschool.dev.com:8088/api/area/add
     *
     */
	public function add(){
	   $this->securetyCheck();
        $data= ['code'=>0,'data'=>[],'msg'=>''];
	    $addAry = input("post.");
//	    if(empty($addAry)){
//            $data['code'] = '20006';
//            $data['msg'] = '参数为空';
//            return json($data);
//        }
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
     *  code 验证码（网络安全用）
     * 路径：http://huiminschool.dev.com:8088/api/area/detail?id=820002
     */
    public function detail(){
        $this->securetyCheck();
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
     *  code 验证码（网络安全用）
     * 请求方式 post
     * http://huiminschool.dev.com:8088/api/area/edit
     */
    public function edit()
    {
        $this->securetyCheck();
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
     *  code 验证码（网络安全用）
     * 路径：http://huiminschool.dev.com:8088/api/area/delete?id=820001
     *
     */
    public function delete(){
        $this->securetyCheck();
        $data= ['code'=>0,'data'=>[],'msg'=>'删除成功'];
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
     * 获取redis验证码
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCsrfTokenRedis(){
        $data= ['code'=>0,'data'=>[],'msg'=>''];
        $token  =$this->checkToken();
        $redis = new Redis();
        $rand= rand(1000,9999);
        $redis->set($token,$rand,30);
        $data['data'] = $rand;
        return  json($data);

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
            $data['code'] = '12101';
            $data['msg'] = '用户未登录，请重新登录';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }
        $user= UserModel::where("token",'=',$token)->find();
        if(!empty($user)){
            $data= $user->toArray();
        }else {
            $data['code'] = '12101';
            $data['msg'] = '用户未登录，请重新登录';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }
        return $token;

    }

    /**
     * 验证code 是否正确
     * @param $key
     */
    protected function checkCode($key){
        $data= ['code'=>0,'data'=>[],'msg'=>''];
        $param = input("param.");
        if( isset($param['code']) ){
            $code = $param['code'];
        }else{
            $data['code'] = '40021';
            $data['msg'] = '验证码code不能为空';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }

        $redis =  $redis = new Redis();
        $redisCode = $redis->get($key);
        if(empty($redisCode)){
            $data['code'] = '40022';
            $data['msg'] = '验证码code:'.$code.',不存在或失效';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }
        if($redisCode !=$code){
            $data['code'] = '40023';
            $data['msg'] = '验证码code不正确';
            echo   json_encode($data,JSON_UNESCAPED_UNICODE);
            die();
        }
    }

    /**
     *
     * 两个验证的统一入口
     *
     */
    protected function securetyCheck(){
        $token = $this->checkToken();
        $this->checkCode($token);
    }



}



