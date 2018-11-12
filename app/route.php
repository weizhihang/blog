<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

//return [
//    '__pattern__' => [
//        'name' => '\w+',
//    ],
//    '[hello]'     => [
//        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
//        ':name' => ['index/hello', ['method' => 'post']],
//    ],
//
//];
use think\Route;
// 注册路由到index模块的News控制器的read操作
//Route::rule('admin','admin/index/index');
Route::rule('heart','index/Blog/heart');
Route::rule('click','index/Blog/click');
Route::rule('Blog/:id','index/Blog/index');
//Route::any('Blog/:id','Blog/index',['method'=>'get']);


Route::rule('/','index/Index/index');
//Route::rule('/','index/Index');
//Route::rule('/','index');
Route::rule('index','index/Index');
Route::rule('study','index/Index/study');
Route::rule('about','index/Index/about');
Route::rule('share','index/Index/share');
Route::rule('gbook','index/Index/gbook');
Route::rule('life','index/Index/life');
Route::rule('info','index/Index/info');
Route::rule('time','index/Index/time');
