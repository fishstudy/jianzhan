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
class Login extends Controller {

/* 登录页面 */
	public function index($username = "", $password = "", $verify = "",$type=1){
		  $key=config('database.key');
		if($_POST){ //登录验证
            $username =safe_replace($username);//过滤
			$map = array();
		switch ($type) {
			case 1:
				$map['username'] = $username;
				break;
			case 2:
				$map['email'] = $username;
				break;
			case 3:
				$map['mobile'] = $username;
				break;
			case 4:
				$map['id'] = $username;
				break;
			default:
				return 0; //参数错误
		}
	 
       $map["password"]=ucenter_md5($password, $key);
		/* 获取用户数据 */
		$user =Db::name('UcenterMember')->where($map)->find();
		if($user){
			$uid = $user["id"];
            if(0 < $uid){ //UC登录成功
				/* 登录用户 */
				$Member=new \app\admin\model\UcenterMember;
				if($Member->login($uid)){ //登录用户
					//TODO:跳转到登录前页面            
					 $url= url('index/index');
				     $data['url']=$url;
                     $data['status']=1;
				    return $data;
			       
				
				} else {
					$this->error("密码或账号错误");
				}
			  }

			} else { //登录失败
				$this->error("密码或账号错误");
			}

		} else {  	
		      $meta_title = '会员登录';	
			 
			 //显示登录表单
			  return $this->fetch("index/login");
		}
	}
    /* 退出登录 */
    public function logout(){
        if(is_login()){
           $Member=new \app\admin\model\Member;
		   $Member->logout();
            session('[destroy]');
            $this->success('退出成功！', U('index'));
        } else {
            $this->redirect('login');
        }
    }

    public function verify(){
        $verify = new \Think\Verify();
        $verify->entry(1);
    }

}
