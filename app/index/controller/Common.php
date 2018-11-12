<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Input;
class Common extends Controller
{
    public function _initialize()
    {
        parent::_initialize();
        $this->navigation();
    }
    public function navigation()
    {
        $info = Db('site_info')->find(1);//站点信息
//        print_r($info);
        $this->assign('info',$info);
//        echo "<pre>";
//        $str = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
//        $url = substr($str,0,strpos($str, '/index.php'));
//        $nav = Db('navigation')->where('status',1)->order('sort asc')->select();//导航栏
//        foreach ($nav as $value){
//            if($value['pid']==0){
//                $value['url'] = $url.$value['url'];
//                foreach ($nav as $item){
//                    if ($item['pid']==$value['id']){
//                        $value['son'][] = $item;
//                    }
//                }
//                $arr[] = $value;
//            }
//        }
////        echo "<pre>";
////        print_r($arr);die;
//        $click=Db::name('blog')->field('id,title,thumb,create_time')->order('click desc')->limit(4)->select();//点赞排行
//        $heart=Db::name('blog')->field('id,title, thumb,create_time')->order('heart desc')->limit(4)->select();//推荐文章
//        $label=Db::name('label')->field('id,label')->select();//推荐文章
//        $info = Db::name('site_info')->find(1);//站点信息
//        $this->assign('nav',$arr);
//        $this->assign('info',$info);
//        $this->assign('click',$click);
//        $this->assign('heart',$heart);
//        $this->assign('label',$label);
//        print_r($label);
//        print_r($heart);
    }
}
