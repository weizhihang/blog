<?php
namespace app\index\controller;
use think\Controller;
use app\common\model\Blog as bl;
//use app\index\controller\Common;
use think\Db;
use think\Config;
use think\Input;
use app\admin\model\Article;
class Index extends Common
{
    public function _initialize()
    {
        parent::_initialize();
    }
    private $blog;
    public function test()
    {
        echo 1223;
        $user = db('bf_user')->select();
        print_r($user);
    }
    public function index1()
    {
        $list = Db::name('article')->where('status',1)->order('id desc')->paginate(Config::get('paginate'));
        $page = $list->render();
        $this->assign('list',$list);
        $this->assign('page',$page);
//        return '<style type="text/css">*{ padding: 0; margin: 0; } .think_default_text{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="ad_bd568ce7058a1091"></think>';
    return view('index');
    }
    public function index()
    {
        $model = new bl();
        $list = $model->where('status',1)->order('id desc')->paginate(Config::get('paginate'));
//        $list = db('blog')->where('status',1)->order('id desc')->paginate(Config::get('paginate'));
        $page = $list->render();
        $this->assign('list',$list);
        $this->assign('page',$page);
//        return '<style type="text/css">*{ padding: 0; margin: 0; } .think_default_text{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="ad_bd568ce7058a1091"></think>';
        return view('index');
    }
    public function about()
    {
        return view('about');
    }
    public function gbook()
    {
        return view('gbook');
    }
    public function info()
    {
        $id = Input('id')?Input('id'):5;
        $model = new bl();
        $data = $model->alias('a')
            ->join('__ADMIN__ u','a.userid = u.admin_id')
            ->where('a.id',$id)
            ->field('a.*,u.username')
            ->find();
        $label_id = explode(',',$data['label_id']);
        $data['label'] = Db('label')->where('id','in',$label_id)->select();
        $this->assign('data',$data);
        return view('info');
    }
    public function life()
    {
        return view('life');
    }
    public function study()
    {
        if(Input('get.')){
            $where = Input('get.');
//            $id = Input('id');
//            $where['label_id'] = ['like',"%$id%"];
        }
        $model = new bl();
        $list = $model->where($where)->where('status',1)->order('id desc')->paginate(Config::get('paginate'));
        $page = $list->render();
        $this->assign('list',$list);
        $this->assign('page',$page);
        return view('list');
    }
    public function share()
    {
//        echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
        return view('share');
    }
    public function time()
    {
        $model = new bl();
        $data = $model->order('id desc')->field('id,title,create_time')->select();
        $this->assign('list',$data);
        return view('time');
    }

}
