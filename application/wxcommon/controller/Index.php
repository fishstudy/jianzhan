<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
namespace app\wxcommon\controller;
use think\Controller;
use think\Db;
use think\Config;

class Index extends Base{
  public function index() {
		//$this->checkWx();
		$this->definedItem();
	}
    public function admin()
    {      

	}
	  public function login()
    {
	}


    /**
     * 封装的curl请求
     * @param $url
     * @param string $type
     * @param string $res
     * @param string $arr
     * @return mixed|string
     */
     protected function http_curl($url,$type='get',$res='json',$arr=''){
        $ch=curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        if($type=='post'){
            curl_setopt($ch,CURLOPT_POST,1);
            curl_setopt($ch,CURLOPT_POSTFIELDS,$arr);
        }
        //3.采集
        $output=curl_exec($ch);
        //curl_close($ch);
        //如果返回的值，是json格式，则转换成数组
        if($res=='json'){
            if(curl_errno($ch)){
            //请求失败，返回错误信息
                return curl_error($ch);
             }else{
                 //请求成功
                return json_decode($output,true);
              }
         }
     }


    /**
     * 微信token校验
     */
     private function checkWx(){
      // $_GET['timestamp']; 微信传过来的时间戳
         // $_GET['nonce']; 微信传过来的随机字符串
         $token = 'konazuiniu';//微信公众平台上的token
         $data = [ $_GET['timestamp'],$_GET['nonce'],$token];
         sort($data);
         $checkStr = implode('',$data);
         $checkStr = sha1($checkStr);
         if($checkStr == $_GET['signature'] && !empty( $_GET['echostr'])){
             echo $_GET['echostr'];
         }else {
             //todo
         }
  }

  protected function responceMsg(){
         $postArr = $GLOBALS['HTTP_RAW_POST_DATA'];
         $postObj = simplexml_load_string($postArr);
  }

    /**
     * 获取access_token
     * @return mixed|string
     */
  protected function getAccessToken(){
         if(!empty($_SESSION['access_toke']) &&$_SESSION['expire_time'] > time()) {
            return $_SESSION['access_toke'];
         } else {
             $appid='wx9f72d7c107fae8a7';
             $appSecuret = '6fa458416ccb3151ead44a709f652c5b';
             $url = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$appid.'&secret='.$appSecuret;
             $result = $this->http_curl($url,"GET",'json');
             $_SESSION['access_toke'] = $result['access_token'];
             $_SESSION['expire_time'] = time()+7200;

             return $result['access_token'];
         }

  }

    /**
     * 公众号开发 创建菜单
     */
  public function definedItem(){
      //创建微信菜单
      $token = $this->getAccessToken();
      $url = 'https://api.weixin.qq.com/cgi-bin/menu/create?access_token='.$token;
      $postAry = [
          //第 1个以及菜单
              'button' =>
                  array (
                      0 =>
                          array (
                              'type' => 'click',
                              'name' => '今日歌曲',
                              'key' => 'V1001_TODAY_MUSIC',
                          ),
                      1 =>
                          array (
                              'name' => '菜单',
                              'sub_button' =>
                                  array (
                                      0 =>
                                          array (
                                              'type' => 'view',
                                              'name' => '搜索',
                                              'url' => 'http://www.soso.com/',
                                          ),
                                  ),
                          ),
                  )
      ];
      $postJson = json_encode($postAry,JSON_UNESCAPED_UNICODE);
      $json = $this->http_curl($url,'post','json',$postJson);
      echo '<pre>';
      print_r($json);
      die();
  }

  protected function getBaseInfo(){
      //1
  }

}
