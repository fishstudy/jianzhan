<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 fish_study
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\admin\model;
use think\Model;
use think\Db;
use think\Session;
/**
 * 文档基础模型
 */
class Member extends Model{
    /**
     * 登录指定用户
     * @param  integer $uid 用户ID
     * @return boolean      ture-登录成功，false-登录失败
     */
    public function login($uid){
        /* 检测是否在当前应用注册 */
		$map['id'] = $uid;
        $info =Db::name("ucenterMember")->where($map)->find();
        if($info) { //未注册
            /* 在当前应用中注册用户 */
            //$Api = new UserApi();

            $user = array("nickname" => $info["username"], "status" => 1);
            $user["uid"] = $info["id"];
        }
        /* 登录用户 */
        $this->autoLogin($user);

        return true;
    }

    /**
     * 注销当前用户
     * @return void
     */
    public function logout(){
        session("user_auth", null);
       
        session("user_auth_sign", null);
		cookie('password',null);
		cookie('username',null);

    }

 

    /**
     * 自动登录用户
     * @param  integer $user 用户信息数组
     */
    private function autoLogin($user){
        /* 更新登录信息 */
        $data = array(
            "uid"             => $user["uid"],
            "login"           => array("exp", "`login`+1"),
            "last_login_time" => time(),
            "last_login_ip"   =>0,
        );
		$map['uid'] = $user["uid"];
        $this->where($map)->update($data);

        /* 记录登录SESSION和COOKIES */
        $auth = array(
            "uid"             => $user["uid"],
            "username"        => get_username($user["uid"]),
            "last_login_time" => $data["last_login_time"],
        );
        session("user_auth", $auth);
        session("uid", $auth["uid"]);
        session("user_auth_sign", data_auth_sign($auth));

    }
  



}
