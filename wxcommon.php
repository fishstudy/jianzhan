<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------

// [ 应用入口文件 ]
$INSTALL_PATH = str_replace('\\','/',dirname($_SERVER['SCRIPT_NAME']));
if($INSTALL_PATH==="/"){
    $INSTALL_PATH="/";		
}else{
    $INSTALL_PATH= '/'. trim($INSTALL_PATH,'/').'/';
}
define('INSTALL_PATH',$INSTALL_PATH);//安装目录
// 定义应用目录
define('APP_PATH', __DIR__ . '/application/');
define ( 'BIND_MODULE','wxcommon');





// 加载框架引导文件
require __DIR__ . '/thinkphp/start.php';


