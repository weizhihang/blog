<?php

namespace app\admin\controller;
use think\config;
//引入七牛云的相关文件
use Qiniu\Auth as Auth;
use Qiniu\Storage\BucketManager;
use Qiniu\Storage\UploadManager;
use app\admin\model\Picture;
use think\Controller;
use think\Db;
use think\Input;

class Resource extends Common
{
    public function demo()
    {
        return view();
    }

    public function upload_test()
    {
        $file = request()->file('file');
        echo "<pre>";
        print_r($file);
    }
    public function upfile()
    {
        return view('testupfile');
    }
    public function add_pic()
    {
        $url = "/admin/Resource/qiniu_upload?b=2";
        $this->assign('url',$url);
        return view('upload');
    }
    public function qiniu_upload()
    {
        $type = input('get.b');
        switch ($type){
            case 1:
                $bucket = Config::get('qiniu.bucket');
                $domain = Config::get('qiniu.DOMAIN');
                break;
            case 2:
                $bucket = 'space';
                $domain = 'space.sunshinecom.cn';
                break;
            default:
                $bucket = 'space';
                $domain = 'space.sunshinecom.cn';
        }
        $accessKey = Config::get('qiniu.accessKey');
        $secretKey = Config::get('qiniu.secretKey');
        $up_res = $this->Upload($accessKey,$secretKey,$bucket);
        if($up_res['err']==99){
            echo $up_res['msg'];
        }else{
            $data['url'] = 'http://'.$domain .'/'. $up_res['key'];
            $data['type'] = $type;
            $data['create_time'] = time();
            $data['update_time'] = time();
            Db::table('bf_picture')->insert($data);
            $res = Db::table('bf_picture')->getLastInsID();
            if($res){
                echo $domain .'/'. $up_res['key'];
            }else{
                echo "添加失败";
            }
        }
    }

    public function Upload($accessKey,$secretKey,$bucket)
    {
        $file = request()->file('fileList');
//        echo "<pre>";
//        print_r($file);die;
        // 要上传图片的本地路径
        $filePath = $file->getRealPath();
        $ext = pathinfo($file->getInfo('name'), PATHINFO_EXTENSION);  //后缀
        // 上传到七牛后保存的文件名
        $key = date('YmdHis') . rand(0, 9999) . '.' . $ext;
//        $key =substr(md5($file->getRealPath()) , 0, 5). date('YmdHis') . rand(0, 9999) . '.' . $ext;
        require_once APP_PATH . '/../vendor/Qiniu/autoload.php';
        // 需要填写你的 Access Key 和 Secret Key
        // 构建鉴权对象
        $auth = new Auth($accessKey, $secretKey);
        // 要上传的空间

        $token = $auth->uploadToken($bucket);
        // 初始化 UploadManager 对象并进行文件的上传
        $uploadMgr = new UploadManager();
        // 调用 UploadManager 的 putFile 方法进行文件的上传
        list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
        if ($err !== null) {
//            var_dump(["err"=>1,"msg"=>$err,"data"=>""]) ;
            $data =  ["err"=>99,"msg"=>$err];
//            return $data;
        } else {
            $data =  ["err"=>1,"key"=>$ret['key']];
//           return $ret['key'];
//            echo $domain .'/'. $ret['key'];
        }
        return $data;
    }
    public function Upload0()
    {
        $file = request()->file('fileList');
//        echo "<pre>";
//        print_r($file);die;
        // 要上传图片的本地路径
        $filePath = $file->getRealPath();
        $ext = pathinfo($file->getInfo('name'), PATHINFO_EXTENSION);  //后缀
        // 上传到七牛后保存的文件名
        $key = date('YmdHis') . rand(0, 9999) . '.' . $ext;
//        $key =substr(md5($file->getRealPath()) , 0, 5). date('YmdHis') . rand(0, 9999) . '.' . $ext;
        require_once APP_PATH . '/../vendor/Qiniu/autoload.php';
        // 需要填写你的 Access Key 和 Secret Key
        $accessKey = Config::get('qiniu.accessKey');
        $secretKey = Config::get('qiniu.secretKey');
        // 构建鉴权对象
        $auth = new Auth($accessKey, $secretKey);
        // 要上传的空间

        $bucket = Config::get('qiniu.bucket');
        $domain = Config::get('qiniu.DOMAIN');
        if(input('get.b') && input('get.b')==2){
            $bucket = 'space';
            $domain = 'space.sunshinecom.cn';
        }

        $token = $auth->uploadToken($bucket);
        // 初始化 UploadManager 对象并进行文件的上传
        $uploadMgr = new UploadManager();
        // 调用 UploadManager 的 putFile 方法进行文件的上传
        list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
        if ($err !== null) {
//            var_dump(["err"=>1,"msg"=>$err,"data"=>""]) ;
//            $data =  ["err"=>1,"msg"=>$err,"data"=>""];
            echo $err;
        } else {
            //返回图片的完整URL
//            $model = new Picture();
            $data['url'] = 'http://'.$domain .'/'. $ret['key'];
            $data['create_time'] = time();
            $data['update_time'] = time();
            Db::table('bf_picture')->insert($data);
            $res = Db::table('bf_picture')->getLastInsID();
            if($res){
            echo $domain .'/'. $ret['key'];
            }else{
                echo "添加失败";
            }
            $data = ["err"=>0,"msg"=>"上传完成","data"=>('http://'.$domain .'/'. $ret['key'])];
//            var_dump(["err"=>0,"msg"=>"上传完成","data"=>($domain .'/'. $ret['key'])]) ;
//            echo $domain .'/'. $ret['key'];
        }
//        return $data;
    }
    public function token1()
    {
        $accessKey = "BtMjKZIBu-HuzlQjrCOQ-DcznUd9Zf93TXvut5mv";
        $secretKey = "Y5P1QPcBRkFqMIebb10LW4yHRNK8Q2p5Kak9Wqh_";
        $bucket = "vimage";
        require_once APP_PATH . '/../vendor/Qiniu/autoload.php';
        $auth = new Auth($accessKey, $secretKey);
        $upToken = $auth->uploadToken($bucket);
        return $upToken;
    }
    public function token()
    {
        $accessKey = "BtMjKZIBu-HuzlQjrCOQ-DcznUd9Zf93TXvut5mv";
        $secretKey = "Y5P1QPcBRkFqMIebb10LW4yHRNK8Q2p5Kak9Wqh_";
        $bucket = "vimage";
//        $auth = new Auth($accessKey, $secretKey);
//        $upToken = $auth->uploadToken($bucket);
//        return $upToken;
        $uid = 5;
        $policy = array(
            'callbackUrl' => 'http://zhangjuan.sunshinecom.cn/admin/Resource/callback',
//            'callbackUrl' => 'http://sunshinecom.cn/admin/Resource/callback',
            'callbackBody' => '{"fname":"$(fname)", "fkey":"$(key)", "desc":"$(x:desc)", "uid":' . $uid . '}'
        );
        $auth = new Auth($accessKey, $secretKey);
//        $upToken = $auth->uploadToken($bucket);
        $upToken = $auth->uploadToken($bucket, null, 3600, $policy);
        header('Access-Control-Allow-Origin:*');
        return $upToken;
    }
    public function callback()
    {
        $_body = file_get_contents('php://input');
        $body = json_decode($_body, true);
//        $uid = $body['uid'];
//        $fname = $body['fname'];
//        $fkey = $body['fkey'];
//        $desc = $body['desc'];

//        $date = new DateTime();
//        $ctime = $date->getTimestamp();
//        $stmt = $DB->prepare('INSERT INTO files_info (uid, fname, fkey, createTime, description) VALUES (:uid, :fname, :fkey, :ctime, :desc);');
//        $ok = $stmt->execute(array('uid' => $id, 'fname' => $fname, 'fkey' => $fkey, 'ctime' => $ctime, 'desc' => $desc));

//        $data['name'] = $body['id'];
//        $data['url'] = "http://img.sunshinecom.cn/".$body['fname'];
        $model = new Picture();
        $model->fname = $body['fname'];
        $model->fkey = $body['fkey'];
        $model->desc = $body['desc'];
        $model->uid = $body['uid'];
        $model->save();

//        $data['fname'] = $fname;
//        $data['uid'] = $uid;
//        $data['fkey'] = $fkey;
//        $data['desc'] = $desc;
//        $data['create_time'] = time();
//        Db::table('bf_picture')->insert($data);
//        $ok = Db::table('bf_picture')->getLastInsID();
            header('Content-Type: application/json');
//            echo "<pre>";
//            print_r($model['id']);

        if (!$model['id'])
        {
            $resp = "添加失败";
//            $resp = $DB->errorInfo();
            http_response_code(500);
            echo json_encode($resp);
            return;
        }
//        $resp = $body;
        $resp = array('ret' => 'success');
//        return $resp;
        echo json_encode($resp);
    }
    public function index()
    {
        $user = Db::table('bf_picture')->select();
        $this->assign('list', $user);
        return $this->fetch();
//        return '<style type="text/css">*{ padding: 0; margin: 0; } .think_default_text{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="ad_bd568ce7058a1091"></think>';
    }
    public function add()
    {
        return $this->fetch();
    }
    public function add_post()
    {
//        $base64_img = trim(Input('img'));
//        $up_dir = 'public/uploads/';//存放在当前目录的upload文件夹下
////        $up_dir = 'public/uploads/picture/" . date(\'Ymd\', time()) . "/"';//存放在当前目录的upload文件夹下
//        if(!file_exists($up_dir)){
//            mkdir($up_dir,0777);
//        }
//        if(preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_img, $result)){
//            $type = $result[2];
//        if(in_array($type,array('pjpeg','jpeg','jpg','gif','bmp','png'))){
//        $new_file = $up_dir.date('YmdHis_').'.'.$type;
//        if(file_put_contents($new_file, base64_decode(str_replace($result[1], '', $base64_img)))){
//        $img_path = str_replace('../../..', '', $new_file);
//        $res['status'] = 1;
//        $res['msg'] = $img_path;
//        }else{
//            $res['status'] = 99;
//            $res['msg'] = '图片上传失败</br>';
//        }
//        }else{
//                //文件类型错误
//            $res['status'] = 98;
//            $res['msg'] = '图片上传类型错误';
//        }
//        }else{
//            //文件错误
//            $res['status'] = 97;
//            $res['msg'] = '文件错误';
//        }
//        $data['status'] = $res;
//        return $data;

        $upload = base64_upload();
        if($upload['url']) {
            $add['url'] = $upload['url'];
            $add['create_time'] = time();
            Db::table('bf_picture')->insert($add);
            $res = Db::table('bf_picture')->getLastInsID();
            if($res>0){
                $data['status'] = 1;
            }else{
                $data['status'] = 99;
            }
        }else{
            $data['status'] = 98;
        }

//        $data['status'] = $res;
        return $data;
    }
    public function add_post0()
    {
        $post = Input('');
        $file = request()->file('file');
//        echo "<pre>";
//        print_r($post);
//        var_dump($file);die;
        $info = $file->move('public/uploads/video');

//        print_r($info);die;
        if ($info) {
            $savename = $info->getSaveName();
            $data['url'] = '/public/uploads/video/'.$savename;
            $data['video_status'] = 1;
        } else {
            // 上传失败获取错误信息
            echo $file->getError();
        }
        $data['title'] = $post['title'];
        $data['name'] = $post['name'];
        $data['create_time'] = time();
        $data['update_time'] = time();
        Db::name('video')->insert($data);
        $res = Db::name('video')->getLastInsID();
//        $data1['id'] = $res;
//        $data1['url'] = "http://kyk.lo-ok.com.cn/bf/public/index.php/index/Shipin/index?id=$res";
//        Db::name('video')->update($data1);

//        print_r($data);
//
//        print_r($res);
        if ($res) {
            $this->success('上传成功！', "index", 1);
        } else {
            $this->error('保存失败，请重试！');
        }
    }
    public function video_del(){
        $id = input('post.id');
        Db::table('bf_video')->delete($id);
        $res = Db::name('bf_video')->getLastInsID();
        if($res){
            $data['status'] = 1;
            $data['msg'] = '已删除！';
        }else{
            $data['status'] = 99;
            $data['msg'] = '未删除！';
        }
        exit(json_encode($data));
    }
    public function edit_post()
    {
        $id = I('get.id');
//        print_r($a);die;
        if (I('video')) {
            $data['video'] = I('video');
            $data['video_status'] = 2;

        } else {
            $upload = new Upload();// 实例化上传类
//        $upload->maxSize = 3145728000 ;// 设置附件上传大小
            $upload->exts = array('jpg', 'gif', 'png', 'jpeg', "mp4", "wmv");//设置附件上传类型
            $upload->rootPath = './Public/Uploads/video/'; // 设置附件上传目录
            $upload->autoSub = false; //拒绝创建子目录
// 上传文件
            $info = $upload->upload();
            echo "<pre>";
            print_r($info);
//        var_dump($info);
            //上传图片的时候就可以，但是上传视频的时候 会显示 false
//            $upload = new \Think\Upload();// 实例化上传类
////            $upload->maxSize   =     3145728 ;// 设置附件上传大小
////            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
//            $upload->rootPath  =      './Public/Uploads/company/'.date('Ymd'); // 设置附件上传根目录
//            // 上传单个文件
//            $info   =   $upload->uploadOne($_FILES['photo1']);
            if (!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            } else {// 上传成功 获取上传文件信息
                $data['video'] = 'Uploads/video/' . $info['file-2']['savename'];
                $data['video_status'] = 1;
            }
        }
        $data['id'] = $id;
        $data['update_time'] = time();
        $res = M('brand')->save($data);
        print_r($data);
        if ($res) {
            $this->success('上传成功！', "video_edit?id=$id", 1);
        } else {
//            $this->error('上传失败，请重试！');
        }
//////////////////////////////////////////////////////
//            $upload=new Upload();
//            $root=$upload->rootPath  = './Public/Uploads/company'.date('Ymd'); // 设置附件上传目录
//            $upload->autoSub  = false;
//            $upload->savePath="$this->name/";
//            $arr=$info   =   $upload->upload();
//            $save=$arr['file-2']['savepath'];
//            $savename=$arr['file-2']['savename'];
//            $path=$root.$save.$savename;
//            $data['video']=$save.$savename;
//        $res = M('brand')->save($data);
//        if($res){
//            echo '修改成功';
////            $this->redirect("index");
//        }else{
//            echo '修改失败';
//
//        }
//        print_r($info);

    }
//    public function fileupload()
//    {
//
//        header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
//        header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
//        header("Cache-Control: no-store, no-cache, must-revalidate");
//        header("Cache-Control: post-check=0, pre-check=0", false);
//        header("Pragma: no-cache");
//        if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
//            exit; // finish preflight CORS requests here
//        }
//        if (!empty($_REQUEST['debug'])) {
//            $random = rand(0, intval($_REQUEST['debug']));
//            if ($random === 0) {
//                header("HTTP/1.0 500 Internal Server Error");
//                exit;
//            }
//        }
//// header("HTTP/1.0 500 Internal Server Error");
//// exit;
//// 5 minutes execution time
//        @set_time_limit(5 * 60);
//// Uncomment this one to fake upload time
//// usleep(5000);
//// Settings
//// $targetDir = ini_get("upload_tmp_dir") . DIRECTORY_SEPARATOR . "plupload";
//        $targetDir = './public/Uploads/video_tmp/';
//        $uploadDir = './public/Uploads/video/';
//        $cleanupTargetDir = true; // Remove old files
//        $maxFileAge = 5 * 3600; // Temp file age in seconds
//// Create target dir
//        if (!file_exists($targetDir)) {
//            @mkdir($targetDir);
//        }
//
//// Create target dir
//        if (!file_exists($uploadDir)) {
//            @mkdir($uploadDir);
//        }
//
//// Get a file name
//        if (isset($_REQUEST["name"])) {
//            $fileName = $_REQUEST["name"];
//        } elseif (!empty($_FILES)) {
//            $fileName = $_FILES["file"]["name"];
//        } else {
//            $fileName = uniqid("file_");
//        }
//        $filePath = $targetDir . DIRECTORY_SEPARATOR . $fileName;
//        $uploadPath = $uploadDir . DIRECTORY_SEPARATOR . $fileName;
//
//// Chunking might be enabled
//        $chunk = isset($_REQUEST["chunk"]) ? intval($_REQUEST["chunk"]) : 0;
//        $chunks = isset($_REQUEST["chunks"]) ? intval($_REQUEST["chunks"]) : 1;
//// Remove old temp files
//        if ($cleanupTargetDir) {
//            if (!is_dir($targetDir) || !$dir = opendir($targetDir)) {
//                die('{"jsonrpc" : "2.0", "error" : {"code": 100, "message": "Failed to open temp directory."}, "id" : "id"}');
//            }
//
//            while (($file = readdir($dir)) !== false) {
//                $tmpfilePath = $targetDir . DIRECTORY_SEPARATOR . $file;
//
//                // If temp file is current file proceed to the next
//                if ($tmpfilePath == "{$filePath}_{$chunk}.part" || $tmpfilePath == "{$filePath}_{$chunk}.parttmp") {
//                    continue;
//                }
//
//                // Remove temp file if it is older than the max age and is not the current file
//                if (preg_match('/\.(part|parttmp)$/', $file) && (@filemtime($tmpfilePath) < time() - $maxFileAge)) {
//                    @unlink($tmpfilePath);
//                }
//            }
//            closedir($dir);
//        }
//// Open temp file
//        if (!$out = @fopen("{$filePath}_{$chunk}.parttmp", "wb")) {
//            die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "Failed to open output stream."}, "id" : "id"}');
//        }
//
//        if (!empty($_FILES)) {
//            if ($_FILES["file"]["error"] || !is_uploaded_file($_FILES["file"]["tmp_name"])) {
//                die('{"jsonrpc" : "2.0", "error" : {"code": 103, "message": "Failed to move uploaded file."}, "id" : "id"}');
//            }
//
//            // Read binary input stream and append it to temp file
//            if (!$in = @fopen($_FILES["file"]["tmp_name"], "rb")) {
//                die('{"jsonrpc" : "2.0", "error" : {"code": 101, "message": "Failed to open input stream."}, "id" : "id"}');
//            }
//        } else {
//            if (!$in = @fopen("php://input", "rb")) {
//                die('{"jsonrpc" : "2.0", "error" : {"code": 101, "message": "Failed to open input stream."}, "id" : "id"}');
//            }
//        }
//
//        while ($buff = fread($in, 4096)) {
//            fwrite($out, $buff);
//        }
//
//        @fclose($out);
//        @fclose($in);
//
//        rename("{$filePath}_{$chunk}.parttmp", "{$filePath}_{$chunk}.part");
//
//        $index = 0;
//        $done = true;
//        for ($index = 0; $index < $chunks; $index++) {
//            if (!file_exists("{$filePath}_{$index}.part")) {
//                $done = false;
//                break;
//            }
//        }
//        if ($done) {
//            if (!$out = @fopen($uploadPath, "wb")) {
//                die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "Failed to open output stream."}, "id" : "id"}');
//            }
//
//            if (flock($out, LOCK_EX)) {
//                for ($index = 0; $index < $chunks; $index++) {
//                    if (!$in = @fopen("{$filePath}_{$index}.part", "rb")) {
//                        break;
//                    }
//
//                    while ($buff = fread($in, 4096)) {
//                        fwrite($out, $buff);
//                    }
//
//                    @fclose($in);
//                    @unlink("{$filePath}_{$index}.part");
//                }
//
//                flock($out, LOCK_UN);
//            }
//            @fclose($out);
//        }
//
//// Return Success JSON-RPC response
//        die('{"jsonrpc" : "2.0", "result" : null, "id" : "id"}');
//    }
}
