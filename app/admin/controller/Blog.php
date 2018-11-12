<?php
namespace app\admin\controller;
use app\common\model\Blog as bl;
use think\Db;
use think\Config;
use think\Input;
class Blog extends Common
{
    public function index()
    {
        if(input('get.page')){
            $page = input('get.page')?input('get.page'):1;
            $limit = input('get.limit')?input('get.limit'):config('pageSize');
            if(input('title')){
                $title = input('title');
                $where['title|keywords'] = ['like',"%$title%"];
            }
            $model = new bl();
            $list = $model->alias('a')
                ->join('__CATEGORY__ c','a.catid = c.id')
                ->where($where)
                ->order('id desc')
                ->field('a.id,a.username,a.title,a.catid,a.status,a.click,a.heart,a.keywords,a.thumb,c.catname')
                ->page($page,$limit)
                ->select();
            $data['code'] = 0;$data['msg'] = '';$data['count'] = $list['count'];$data['data'] = $list;
            return json($data);
        }else{
            $url = '/admin/Blog/index/';
            $this->assign('url',$url);
            return view();
        }
    }
    public function add(){
        if(request()->isPost()) {
            $data = input('post.');
            $label_id = implode(',',$data['label_id']);
            $data['label_id'] =$label_id;
            $model = new bl();
            $model->data($data);
            $model->save();
            $result['code'] = 1;
            $result['msg'] = '文章添加成功!';
            $result['url'] = url('index');
            return $result;
        }else{
            $this->assign('arr','null');
            $label = Db::name('label')->select();
            $category = Db::name('category')->select();
            $this->assign('label',$label);
            $this->assign('category',$category);
            $this->assign('title',lang('edit').lang('debris'));
            return $this->fetch('form');
        }
    }
    public function edit(){
        if(request()->isPost()) {
            $data = input('post.');
            $label_id = implode(',',$data['label_id']);
            $data['label_id'] =$label_id;
            $model = new bl();
            // 显式指定更新数据操作
            $model->isUpdate(true)->save($data);
            $result['code'] = 1;
            $result['msg'] = '文章修改成功!';
            $result['url'] = url('index');
            return $result;
        }else{
            $id=input('id');
            $info=db('blog')->where(array('id'=>$id))->find();
            $label_id = explode(',',$info['label_id']);
            $arr['id'] = $info['id'];
            $arr['title'] = $info['title'];
            $arr['description'] = $info['description'];
            $arr['catid'] = $info['catid'];
            $arr['keywords'] = $info['keywords'];
            $arr['text'] = $info['text'];
            foreach ($label_id as $value){
                $tmp = 'label_id['.$value.']';
                $arr[$tmp] = true;
            }
            $this->assign('arr',json_encode($arr,true));
            $label = Db::name('label')->select();
            $category = Db::name('category')->select();
            $this->assign('label',$label);
            $this->assign('category',$category);
            $this->assign('title',lang('edit').lang('debris'));
            return $this->fetch('form');
        }
    }
    public function min_edit()
    {
        $post = Input('post.');
        $name = $post['name'];
        $save['id'] = $post['id'];
        $save[$name] = $post['val'];
        $res = bl::update($save);
        if($res){
            $data['status'] = 1;
        }else{
            $data['status'] = 99;
        }
        return json($data);
    }
    public function add11(){
        if(request()->isPost()) {
            //构建数组
            $data = input('post.');
            $data['addtime'] = time();
            $typeId = explode(':',$data['type_id']);
            $data['type_id'] =$typeId[1];
            db('debris')->insert($data);
            $result['code'] = 1;
            $result['msg'] = '碎片添加成功!';
            $result['url'] = url('index');
            return $result;
        }else{
            $debrisTypeList=db('debris_type')->order('sort')->select();//获取所有广告位
            $this->assign('debrisTypeList',json_encode($debrisTypeList,true));
            $this->assign('title',lang('add').lang('debris'));
            $this->assign('info','null');
            return $this->fetch('form');
        }
    }
    public function exdit()
    {
        $input = input('id');
        $label = Db::table('bf_label')->select();
        $category = Db::table('bf_category')->select();
        $blog = Db::name('blog')->find($input);
        $blog['label'] = explode(',',$blog['label']);
        $this->assign('label',$label);
        $this->assign('category',$category);
        $this->assign('data',$blog);
        return $this->fetch();
    }
    public function add_post()
    {
        $input = input('');

        $model = new bl();
        $model->title = $input['title'];
        $model->descr = $input['descr'];
        $model->keyword = $input['keyword'];
        $model->category_id = $input['category_id'];
        $model->label = implode(',',$input['label_id']);
        $model->text = $input['editorValue'];
        $model->save();
        if($model){
            echo '成功！';
        }else{
            echo '失败！';
        }
    }
    public function del()
    {
        $id = input('id');
//        $res = Db::name('blog')->delete($id);
        $model = new bl();
        // 软删除
        $res = $model->destroy($id);
        if($res){
            $data['status'] = 1;
            $data['msg'] = '已删除';
        }else{
            $data['status'] = -1;
            $data['msg'] = '未删除';
        }
        echo json_encode($data);
        }
    public function dels()
    {
        $id = input('ids');
        $ids = explode(",",$id);
//        $res = Db::name('blog')->delete($ids);

        $model = new bl();
        // 软删除
        $res = $model->destroy($ids);
        // 真实删除
//        $model->delete(true);

        if($res){
            $data['status'] = 1;
            $data['msg'] = '已删除';
        }else{
            $data['status'] = -1;
            $data['msg'] = '未删除';
        }
        echo json_encode($data);
    }
}
