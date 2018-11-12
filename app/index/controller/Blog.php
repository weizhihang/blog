<?php
namespace app\index\controller;
use think\Controller;
use app\common\model\Blog as bl;
use think\Db;
use think\Input;
class Blog extends Common
{
    public function _initialize()
{
    parent::_initialize();
}
    public function index()
    {
        $id = Input('id');
//        $id = Input('id')?Input('id'):5;
        $model = new bl();
        $data = $model->alias('a')
//            ->join('bf_label c','a.label_id = c.id')
            ->join('__ADMIN__ u','a.userid = userid')
            ->where('a.id',$id)
//            ->where('a.id',5)
            ->field('a.*,u.username')
            ->find();
        $label_id = explode(',',$data['label_id']);
        $data['label'] = Db('label')->where('id','in',$label_id)->select();
        $category = Db('category')->field('catname')->find($data['catid']);
        $data['catname'] = $category['catname'];
        $page = $this->prev_next($id);  //上一页，下一页 内容
        $related = $this->related($id);
        $this->assign('data',$data);
        $this->assign('page',$page);
        $this->assign('related',$related);//相关文章
        return view('index/info');
    }
    public function label()
    {
        $id = Input('id');
        echo 1454512;
    }
    //////////////////////////////////////////////////////////////////////////函数函数函数
    private function related($id)
    {
//        $id = $id?$id:15;
////        $id = 15;
        $model = new bl();
        $blog = $model->where("id",$id)->find();
        $category['catid'] = $blog['catid'];

        $model = new bl();
        $related = $model
            ->WHERE ($category)
            ->field('id,title')
            ->select();
//        echo "<pre>";
//        print_r($related);
        return $related;
    }
    private function prev_next($id)
    {
        $model = new bl();
        $prev=$model->where("id>".$id)->order('id asc')->limit(1)->find();
        $prev_id = $prev['id'];
        $prev_title = $prev['title'];
        $next=$model->where("id<".$id)->order('id desc')->limit(1)->find();
        $next_id = $next['id'];
        $next_title = $next['title'];
        $page = "<div class=\"nextinfo\">
            <p>上一篇：<a href=\"/Blog/$prev_id\">$prev_title</a></p>
            <p>下一篇：<a href=\"/Blog/$next_id\">$next_title</a></p>
        </div>";
        return $page;
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////


    public function click()
    {
//        $data['id'] = 55;
        $data['id'] = input('id');
        $find = db('blog')->where($data)->field('click')->find();
        $data['click'] = $find['click'] + 1;
        db('blog')->update($data);
        print_r($data);
    }
    public function heart()
    {
        $data['id'] = input('id');
        $find = db('blog')->where($data)->field('heart')->find();
        $data['heart'] = $find['heart'] + 1;
        $res = db('blog')->update($data);
        if($res){
            $arr['status'] = 1;
            $arr['msg'] = "成功";
        }else{
            $arr['status'] = -1;
            $arr['msg'] = "失败";
        }
        return json($arr);
    }
}
