<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\api\controller\v2;
use think\cache\driver\Redis;
use think\Controller;
use think\Db;
use think\Session;
use think\exception\ApiException;
use app\api\controller\Base;
use app\api\model\User as UserModel;
/**
 * 用户控制器
 *
 *
 */
class User extends Base{

	/**
     * 新增用户
     * 参数说明：
     * "username"=>"用户名",
     * "password"=>"密码",
     * "mobile"=>"手机号",
     * "sex"=>"1", #1 男  2女
     * "nickname"=>"昵称",
     * 请求方式 post
     * 请求URL：http://huiminschool.dev.com:8088/v2/api/useradvance/add
     *
     */
	public function add(){
        try {
            $data = ['code' => 0, 'data' => [], 'msg' => '新增成功'];
            $addAry = input("post.");
            $others = [
                "token" => "",
                "create_time" => time(),
                "update_time" => time(),
                "status" => 1,
            ];
            if(empty($addAry['age'])){
                $addAry['age']= '';
            }
            $userModel = new UserModel();
            $res = $this->validate($addAry, "Userv2");
            if ($res !== true) {
                throw new ApiException($res);
            }
            $this->checkMobileAccout($addAry);
            $addAry = array_merge($addAry, $others);
            $addAry['password'] = md5($addAry['password']);
            $user = new UserModel();
            $user->save($addAry);
            if (!empty($user)) {
                $Auser = $user->toArray();
                $this->translateData($Auser);
                unset($Auser['password2']);
                $data['data'] = $Auser;
            } else {
                $data['code'] = '10001';
                $data['msg'] = '添加用户失败';
            }
        } catch (ApiException $e){
            $data['msg'] =  $e->getMessage();
            $data['code'] =  $e->getCode();
        }
        return json($data);
	}

    /**
     * 用户登录
     * "username"=>"用户名",
     * "password"=>"密码",
     *  从新登陆token 会发生改变
     * 请求方式 post
     * 请求URL：http://huiminschool.dev.com:8088/v2/api/user/login
     *
     */
    public function login()
    {
        try{
            $data= ['code'=>0,'data'=>[],'msg'=>'登录成功'];
            $username = trim(input('post.username'));
            $password = trim(input('post.password'));
            $aLogin = [
                'username'=> $username,
                'password'=> $password,
            ];
            $password = md5($password);
            $res = $this->validate($aLogin, "UserLogin");
            if ($res !== true) {
                throw new ApiException($res);
            }

            $user= UserModel::where("username",'=',$username)->where("password","=",$password)->find();
            if(!empty($user)){
                $token = md5($user->id.time());
                $user->token = $token;
                $user->update_time = time();
                $user->save();
                $aUser = $user->toArray();
                $this->translateData($aUser);
                $data['data']= $aUser;
            }else {
                //empty
                throw new ApiException('账号或密码不正确');

            }
        } catch (ApiException $e){
            $data['msg'] =  $e->getMessage();
            $data['code'] =  $e->getCode();
         }
        return json($data);
    }

    /**
     * 根据用户ID，获取用户详情
     * 请求方式 GET
     * 参数 uid 用户ID
     * 路径：http://huiminschool.dev.com:8088/v2/api/user/detail?uid=3

     */
    public function detail(){
        $data= ['code'=>0,'data'=>[],'msg'=>'查询成功'];
        $uid= intval(input('get.uid'));
        $this->checkToken();
        if($uid<1){
            $data['code'] = '12102';
            $data['msg'] = '用户ID不能为空';
            return  json($data);
        }
        $user= UserModel::find($uid);
        if(!empty($user)){
            $aUser = $user->toArray();
            $this->translateData($aUser);
            $data['data']= $aUser;
        }else {
            //empty
        }
        return json($data);
    }

    /**
     * 根据用户token 获取用户信息
     * 参数 token 用户token
     * 请求方式 GET
     * http://huiminschool.dev.com:8088/v2/api/user/getInfoByToken?token=32wweewewwe
     */
    public function getInfoByToken(){
        $data= ['code'=>0,'data'=>[],'msg'=>'查询成功'];
        $token= input('get.token');
        if(empty($token)){
            $data['code'] = '12101';
            $data['msg'] = 'token不能为空';
            return  json($data);
        }
        $user= UserModel::where("token",'=',$token)->find();
        if(!empty($user)){
            $data['data']= $user->toArray();
        }else {
            //empty
        }

        return json($data);
    }

    /**
     * 获取redis验证码
     */
    public function getCsrfSeq(){
        $data= ['code'=>0,'data'=>[],'msg'=>'seq获取成功'];
        $token  =$this->checkToken();
        $redis = new Redis();
        $rand= rand(1000,9999);
        $rand = sha1($rand);
        $redis->set($token,$rand,30);
        $data['data'] = $rand;
        return  json($data);

    }

    /**
     * 1 验证确认密码，
     * 2 验证手机号是否已注册，
     * 3 该账号已被注册
     * @param $data 数组
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function checkMobileAccout($data){
        if($data["password"] != $data['password2']){
            throw new ApiException('两次密码不一致');
        }
        $regs = "/^1\d{10}$/";
        $reg_mobile = preg_match($regs,$data['mobile']);
        if(!$reg_mobile){
            throw new ApiException("手机号不正确");
        }
        $reg2 = '/^[\dA-Za-z]+$/';
        $reg_username = preg_match($reg2,$data['username']);
        if(!$reg_username){
            throw new ApiException("账号只能为5~20位数字或字母");
        }
        $reg_password = preg_match($reg2,$data['password']);
        if(!$reg_password){
            throw new ApiException("密码只能为5~20位数字或字母");
        }
        $reg3 ='/^[\dA-Za-z\x80-\xff]+$/';
        $reg_nickname = preg_match($reg3,$data['nickname']);
        if(!$reg_nickname){
            throw new ApiException("用户昵称只能为5~20位字母、数字或汉字");
        }
        $user = new UserModel();
        $userData = $user->where("mobile","=",$data['mobile'])->find();
        if(!empty($userData)){
            throw new ApiException('手机号已被注册');
        }
        $userData2 = $user->where("username","=",$data['username'])->find();
        if(!empty($userData2)){
            throw new ApiException('该账号已被注册');
        }
    }

    /**
     * 内容转换
     * @param $data
     */
    protected function  translateData(&$data){
        $aSex = [1=>'男',2=>'女'];
        $data['sex'] = $aSex[ $data['sex']];

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

}


