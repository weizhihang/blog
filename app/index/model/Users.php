<?php
/**
 * Created by PhpStorm.
 * User: vzinger
 * Date: 2018/6/9
 * Time: 20:40
 */
namespace app\index\model;

use think\Model;

class Users extends Model
{
    protected $auto =  'ip';
    protected $pk = 'uid';
    protected $autoWriteTimestamp = true;
}