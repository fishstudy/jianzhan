<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\api\controller\v0;
use app\api\controller\Base;
use app\api\model\User as UserModel;
/**
 * 用户控制器
 */
class User extends Base{

	/**
     * 新增用户
     * 参数说明：
     * "username"=>"用户名",
     * "password"=>"密码",
     * "phone"=>"手机号",
     * "sex"=>"1", #1 男  2女
     * "nickname"=>"昵称",
     * 请求方式 post
     * 请求URL：http://huiminschool.dev.com:8088/v0/api/user/add
     *
     */
	public function add(){

        $data= ['code'=>0,'data'=>[],'msg'=>'新增成功'];
	    $addAry = input("post.");
        $others = [
            "token"=>"",
            "create_time"=>time(),
            "update_time"=>time(),
            "status"=>1,
        ];
        $addAry = array_merge($addAry,$others);
        $mobile =  $addAry['mobile'];
        $addAry['mobile'] = '';
        $addAry['password'] = md5($addAry['password']);
	    $user= new UserModel();
	    $user->save($addAry);
	    if(!empty($user)){
	        $data['data'] =$user->toArray();
            $data['data']['mobile'] = $mobile;
        } else{
	        $data['code'] = '10001';
	        $data['msg'] = '添加用户失败';
        }

        return json($data);
	}

    /**
     * 用户登录
     * "username"=>"用户名",
     * "password"=>"密码",
     *  从新登陆token 会发生改变
     * 请求方式 post
     * 请求URL：http://huiminschool.dev.com:8088/v0/api/user/login
     *
     */
    public function login()
    {
        $data= ['code'=>0,'data'=>[],'msg'=>'登录成'];
        $username = trim(input('post.username'));
        $password = trim(input('post.password'));
        $password = md5($password);
        if(empty($username)||empty($password)){
            $data['code'] = '10002';
            $data['msg'] = '用户名或密码不能为空';
            return json($data);
        }
        
        $user= UserModel::where("username",'=',$username)->where("password","=",$password)->find();
        if(!empty($user)){
            $token = md5($user->id.time());
            $user->token = $token;
            $user->update_time = time();
            $user->save();
            $data['data']= $user->toArray();
        }else {
            $data['code'] = '10006';
            $data['msg'] = '用户名或密码错误';
            //empty
        }

        return json($data);
    }

    /**
     * 根据用户ID，获取用户详情
     * 请求方式 GET
     * 参数 uid 用户ID
     * 路径：http://huiminschool.dev.com:8088/v0/api/user/detail?uid=3

     */
    public function detail(){
        $data= ['code'=>0,'data'=>[],'msg'=>'查询成功'];
        $uid= intval(input('get.uid'));
        if($uid<1){
            $data['code'] = '10003';
            $data['msg'] = '用户ID输入有误';
            return  json($data);
        }
        $user= UserModel::find($uid);
        if(!empty($user)){
            $data['data']= $user->toArray();
        }else {
            //empty
        }
        return json($data);
    }

    /**
     * 根据用户token 获取用户信息
     * 参数 token 用户token
     * 请求方式 GET
     * http://huiminschool.dev.com:8088/v0/api/user/getInfoByToken?token=32wweewewwe
     */
    public function getInfoByToken(){
        $data= ['code'=>0,'data'=>[],'msg'=>'查询成功'];
        $token= input('get.token');
        if(empty($token)){
            $data['code'] = '10004';
            $data['msg'] = '用户token不能为空';
            return  json($data);
        }
        $user= UserModel::where("token",'=',$token)->find();
        if(!empty($user)){
            $data['data']= $user->toArray();
        }else {
            //empty
            $data['code'] = '10005';
            $data['msg'] = '根据token:'.$token." 没有查询到数据";
            return  json($data);
        }

        return json($data);
    }

    public function getCsrfToken(){
       $token =  $this->request->token('__code__', 'sha1');
       echo $token;
       print_r($_SESSION);
       die();
    }



}



