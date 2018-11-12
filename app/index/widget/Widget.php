<?php
namespace app\index\widget;
use Think\Controller;
class Widget extends Controller
{
    public function header()
    {
        $str = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
        $url = substr($str,0,strpos($str, '/index.php'));
        $where['status'] = 1;
//        $where['type'] = 0;
        $nav = Db('navigation')->where($where)->order('sort asc')->select();//导航栏
        foreach ($nav as $value){
            if($value['pid']==0){
                $value['url'] = $url.$value['url'];
                foreach ($nav as $item){
                    if ($item['pid']==$value['id']){
                        $value['son'][] = $item;
                    }
                }
                $arr[] = $value;
            }
        }
//        return json_encode($arr);
        $this->assign('nav',$arr);
//        $this->display('public:header');
        return $this->fetch('public/header');//当然得有视图了
    }
    public function right()
    {
        $click=Db('blog')->field('id,title,thumb,create_time')->order('click desc')->limit(4)->select();//点赞排行
        $heart=Db('blog')->field('id,title, thumb,create_time')->order('heart desc')->limit(4)->select();//推荐文章
        $label=Db('label')->field('id,label')->select();//推荐文章

        $this->assign('click',$click);
        $this->assign('heart',$heart);
        $this->assign('label',$label);
        return $this->fetch('public/right');
    }
    public function footer()
    {

    }
    public function bread()
    {

    }
    public function Widgets ()
    {
        $str = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
        $url = substr($str,0,strpos($str, '/index.php'));
        $nav = Db('navigation')->where('status',1)->order('sort asc')->select();//导航栏
        foreach ($nav as $value){
            if($value['pid']==0){
                $value['url'] = $url.$value['url'];
                foreach ($nav as $item){
                    if ($item['pid']==$value['id']){
                        $value['son'][] = $item;
                    }
                }
                $arr[] = $value;
            }
        }
//        return json_encode($arr);
        $this->assign('nav',$arr);
//        $this->display('public:header');
        return $this->fetch('widget/header');//当然得有视图了
    }
}