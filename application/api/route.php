<?php
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------
// | Copyright (c) 2021 慧敏职业学校.
// +----------------------------------------------------------------------
// +----------------------------------------------------------------------

use think\Route;

//Sample
Route::post('api/:version/user/add', 'api/:version.User/add');
Route::get('api/:version/banner/:id', 'api/:version.Banner/getBanner');

Route::post('api/:version/user/login', 'api/:version.User/login');
