<?php
namespace app\admin\controller;
use think\Db;
use think\Upload;
use think\Request;
use think\Controller;
class UpFiles extends Common
{
    public function upload(){
        // 获取上传文件表单字段名
        $fileKey = array_keys(request()->file());
        // 获取表单上传文件
        $file = request()->file($fileKey['0']);
        // 移动到框架应用根目录/public/uploads/ 目录下
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
        if($info){
            $result['code'] = 1;
            $result['info'] = '图片上传成功!';
            $path=str_replace('\\','/',$info->getSaveName());
            $result['url'] = '/uploads/'. $path;
            return $result;
        }else{
            // 上传失败获取错误信息
            $result['code'] =0;
            $result['info'] = '图片上传失败!';
            $result['url'] = '';
            return $result;
        }
    }
    public function file(){
        $fileKey = array_keys(request()->file());
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file($fileKey['0']);
        // 移动到框架应用根目录/public/uploads/ 目录下
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');

        if($info){
            $result['code'] = 0;
            $result['info'] = '文件上传成功!';
            $path=str_replace('\\','/',$info->getSaveName());

            $result['url'] = '/uploads/'. $path;
            $result['ext'] = $info->getExtension();
            $result['size'] = byte_format($info->getSize(),2);
            return $result;
        }else{
            // 上传失败获取错误信息
            $result['code'] =1;
            $result['info'] = '文件上传失败!';
            $result['url'] = '';
            return $result;
        }
    }
    public function pic(){
        // 获取上传文件表单字段名
        $fileKey = array_keys(request()->file());
        // 获取表单上传文件
        $file = request()->file($fileKey['0']);
        // 移动到框架应用根目录/public/uploads/ 目录下
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
        if($info){
            $result['code'] = 1;
            $result['info'] = '图片上传成功!';
            $path=str_replace('\\','/',$info->getSaveName());
            $result['url'] = '/uploads/'. $path;
            return json_encode($result,true);
        }else{
            // 上传失败获取错误信息
            $result['code'] =0;
            $result['info'] = '图片上传失败!';
            $result['url'] = '';
            return json_encode($result,true);
        }
    }
    //编辑器图片上传
    public function editUpload(){
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('file');
        // 移动到框架应用根目录/public/uploads/ 目录下
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
        if($info){
            $result['code'] = 0;
            $result['msg'] = '图片上传成功!';
            $path=str_replace('\\','/',$info->getSaveName());
            $result['data']['src'] = __PUBLIC__.'/uploads/'. $path;
            $result['data']['title'] = $path;
//            return json_encode($result,true);
            return json_encode($result,true);
        }else{
            // 上传失败获取错误信息
            $result['code'] =1;
            $result['msg'] = '图片上传失败!';
            $result['data'] = '';
//            return json_encode($result,true);
            return json_encode($result,true);
        }
    }
    public function doUploadPic()//上传模块
    {
//        $upload = new \Think\Upload();
//        $upload->maxSize = 3145728;
//        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
//        $upload->rootPath = ROOT_PATH . 'public' . DS . 'uploads';
//        $upload->savePath = '/';
//        $info = $upload->upload();
//        if(!$info){
//            $this->error($upload->getError());
//        }else{
//            foreach($info as $file){
//                $data = '/Uploads'.$file['savepath'] . $file['savename'];
//                $file_a=$data;
//                echo '{"code":0,"msg":"成功上传","data":{"src":"https://ss0.baidu.com/73t1bjeh1BF3odCf/it/u=1895553521,1066243837&fm=85&s=593B83552D93745546A0B4FF0300802B"}}';
//            }
//        }
        echo '{"code":0,"msg":"成功上传","data":{"src":"https://ss0.baidu.com/73t1bjeh1BF3odCf/it/u=1895553521,1066243837&fm=85&s=593B83552D93745546A0B4FF0300802B"}}';

    }

    //多图上传
    public function upImages(){
        $fileKey = array_keys(request()->file());
        // 获取表单上传文件
        $file = request()->file($fileKey['0']);
        // 移动到框架应用根目录/public/uploads/ 目录下
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
        if($info){
            $result['code'] = 0;
            $result['msg'] = '图片上传成功!';
            $path=str_replace('\\','/',$info->getSaveName());
            $result["src"] = '/uploads/'. $path;
            return $result;
        }else{
            // 上传失败获取错误信息
            $result['code'] =1;
            $result['msg'] = '图片上传失败!';
            return $result;
        }
    }
}