<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Input;
class Life extends Common
{
    public function _initialize()
{
    parent::_initialize();
}
    public function index()
    {

        $id = Input('id')?Input('id'):5;
//        $model = new Article();
        // 查询单个数据
//        $data = $model->where('id', 5)->find();
//        print_r($dara);
//        $category_id = $data['category_id'];
        $data = Db::table('bf_article')
            ->alias('a')
//            ->join('bf_label c','a.label_id = c.id')
            ->join('bf_admin_user u','a.author = u.id')
            ->where('a.id',$id)
//            ->where('a.id',5)
            ->field('a.*,u.username')
            ->find();
        $label_id = explode(',',$data['label_id']);
        $data['label'] = Db::table('bf_label')->where('id','in',$label_id)->select();
        $this->assign('data',$data);
        return $this->fetch("info");
    }
}
