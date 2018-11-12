<?php
namespace app\admin\model;
use think\Model;
//use think\Request;
//use think\Db;
//use think\Controller;
class Admin extends Model
{
	public function login0($data){
		$user=db('admin')->where('username',$data['username'])->find();
		if($user){
			if($user['pwd'] == md5($data['password'])){
				session('username',$user['username']);
				session('aid',$user['admin_id']);
				$avatar = $user['avatar']==''?'/static/admin/images/0.jpg':$user['avatar'];
				session('avatar',$avatar);
				return 1; //信息正确
			}else{
				return -1; //密码错误
			}
		}else{
			return -1; //用户不存在
		}
	}
	public function login($data){
		$captcha = new \think\captcha\Captcha();
		if(!$captcha->check($data['code'])){
			return 4;
		}

		$user = Db('admin')->where('username','=',$data['username'])->find();
		if($user){
			if($user['password'] == md5($data['password'])){
				session('username', $user['username']);
				session('uid', $user['id']);
				return 3;
			}else{
				return 2;//密码错误
			}
		}else{
			return 1; //用户不存在
		}
	}

}
