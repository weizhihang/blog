<?php

namespace app\common\model;

use think\Model;
use traits\model\SoftDelete;

class Blog extends Model
{

    protected function initialize()
    { //需要调用`Model`的`initialize`方法
        parent::initialize(); //TODO:自定义的初始化
    }

    protected $autoWriteTimestamp = true;
    use SoftDelete;
    protected $deleteTime = 'delete_time';
//    protected $auto = ['ip'];
    protected $insert = ['status' => 1];
//    protected $update = [];



}