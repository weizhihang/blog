<?php
namespace app\admin\controller;
use think\Request;
use think\Db;
use think\Controller;
class Common extends Controller
{
    protected $mod,$role,$system,$nav,$menudata,$cache_model,$categorys,$module,$moduleid,$adminRules,$HrefId;
    public function _initialize()
    {

        $this->importent();
        $system = db('system')->find();
        //导航
        // 获取缓存数据
        $authRule = cache('authRule');
        if(!$authRule){
            $authRule = db('auth_rule')->where('menustatus=1')->order('sort')->select();
            cache('authRule', $authRule, 3600);
        }
        //声明数组
        $menus = array();
        foreach ($authRule as $key=>$val){
            $authRule[$key]['href'] = url($val['href']);
            if($val['pid']==0){
                if(session('aid')!=1){
                    if(in_array($val['id'],$this->adminRules)){
                        $menus[] = $val;
                    }
                }else{
                    $menus[] = $val;
                }
            }
        }
        foreach ($menus as $k=>$v){
            foreach ($authRule as $kk=>$vv){
                if($v['id']==$vv['pid']){
                    if(session('aid')!=1) {
                        if (in_array($vv['id'], $this->adminRules)) {
                            $menus[$k]['children'][] = $vv;
                        }
                    }else{
                        $menus[$k]['children'][] = $vv;
                    }
                }
            }
        }
//        echo "<pre>";
//        print_r($system);
//        print_r($menus);
//        die;

//        echo "<pre>";
//        print_r($menus);
        $this->assign('system', $system);
        $this->assign('menus', $menus);
        $this->assign('a', 2);
        $this->assign('menu_nav', $this->HrefId);
    }
    public function importent()
    {
        //判断管理员是否登录
        if (!session('aid')) {
            $this->redirect('login/index');
        }
        define('MODULE_NAME',strtolower(request()->controller()));
        define('ACTION_NAME',strtolower(request()->action()));
        //权限管理
        //当前操作权限ID
        if(session('aid')!=1){
            $this->HrefId = db('auth_rule')->where('href',MODULE_NAME.'/'.ACTION_NAME)->value('id');
            //当前管理员权限
            $map['a.admin_id'] = session('aid');
            $rules=Db::table(config('database.prefix').'admin')->alias('a')
                ->join(config('database.prefix').'auth_group ag','a.group_id = ag.group_id','left')
                ->where($map)
                ->value('ag.rules');
            $this->adminRules = explode(',',$rules);
            if($this->HrefId){
                if(!in_array($this->HrefId,$this->adminRules)){
                    $this->error('您无此操作权限','index');
                }
            }
        }
        $this->system = F('System');
        $this->categorys = F('Category');
        $this->module = F('Module');
        $this->mod = F('Mod');
        $this->role = F('Role');
        $this->cache_model=array('Module','Role','Category','Posid','Field','System');
        if(empty($this->system)){
            foreach($this->cache_model as $r){
                savecache($r);
            }
        }
    }
    //空操作
//    public function _empty(){
//        return $this->error('空操作，返回上次访问页面中...');
//    }

}
