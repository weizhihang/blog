<?php
namespace app\project\controller;
use think\Input;
use TencentYoutuyun\Youtu;
use TencentYoutuyun\Conf;
class Ocr extends Common
{
    protected $appid = '10115172';
    protected $secretId = 'AKIDzmKdhWPPUIrADzDlkTxDE0Xoqc8Oo6Zm';
    protected $secretKey = '2sXeYCeqOjrnTs1tUord8NL2TeXkiRjn';
    protected $userid = 610898177;
//    public function _initialize(){
//        parent::_initialize();
////        if (!session('user.id')) {
////            $this->redirect('login/index');
////        }
//    }
    public function face()
    {

//        $_SESSION['name'] = 'bdhakd';
//        print_r($_SESSION);
        return $this->fetch();
    }

    public function asd()
    {
        $uploadRet = YouTu::detectfaceurl('http://open.youtu.qq.com/app/img/experience/face_img/face_01.jpg', 0);
        print_r($uploadRet);

    }

    public function face_res()
    {
        $upload = new UpFiles();
        $res = $upload->upload();
        if ($res['code'] == 1) {
            $url = __PUBLIC__ . $res['url'];
            $this->assign('url', $url);
            Conf::setAppInfo($this->appid, $this->secretId, $this->secretKey, $this->userid, Conf::API_YOUTU_END_POINT);
            $uploadRet = YouTu::detectface(ROOT_PATH . 'public' . $res['url'], 1);
            $face = $uploadRet['face'];
            foreach ($face as $value) {
                if ($value['gender'] == 0) {
                    $count[] = ['key' => '性别', 'val' => '女'];
                } else {
                    $count[] = ['key' => '性别', 'val' => '男'];
                }
                $count[] = ['key' => '年龄', 'val' => $value['age']];
                if ($value['expression'] <= 30) {
                    $count[] = ['key' => '表情', 'val' => '似笑非笑'];
                } else if ($value['expression'] <= 70 && $value['expression'] > 30) {
                    $count[] = ['key' => '表情', 'val' => '微笑'];
                } else if ($value['expression'] > 70) {
                    $count[] = ['key' => '表情', 'val' => '大笑'];
                }
                $count[] = ['key' => '魅力', 'val' => $value['beauty']];
                if ($value['glasses'] == 0) {
                    $count[] = ['key' => '眼镜', 'val' => '无'];
                } else {
                    $count[] = ['key' => '性别', 'val' => '男'];
                }
                if ($value['hat'] == 0) {
                    $count[] = ['key' => '帽子', 'val' => '无'];
                } else {
                    $count[] = ['key' => '帽子', 'val' => '有'];
                }
                if ($value['mask'] == 0) {
                    $count[] = ['key' => '口罩', 'val' => '无'];
                } else {
                    $count[] = ['key' => '口罩', 'val' => '有'];
                }
            }
            $arr[] = $count;
            $this->assign('count', $arr);
        } else {
            echo "上传失败";
        }
//        echo '<pre>';
//        print_r($arr);
        return $this->fetch();
    }

    public function id_ocr()
    {
        $uploadRet = YouTu::idcardocr('image/2222.png', 0);
        $uploadRet = YouTu::idcardocrurl('http://test-1254425540.cossh.myqcloud.com/wei.jpg', 1);
        return $uploadRet;
    }
    public function card(){
        return $this->fetch();
    }
    public function b_card()
    {
        $upload = new UpFiles();
        $res = $upload->upload();
        if ($res['code'] == 1) {
            Conf::setAppInfo($this->appid, $this->secretId, $this->secretKey, $this->userid, Conf::API_YOUTU_END_POINT);
            $uploadRet = YouTu::namecardocr(ROOT_PATH . 'public' . $res['url'], 1);
            $items = $uploadRet['items'];
            foreach($items as $item){
                    $val['item'] = $item['item'];
                    $val['itemstring'] = $item['itemstring'];
                $arr[] = $val;
            }
            $count = $arr;
//            echo '<pre>';
//            print_r($count);
            $url = __PUBLIC__ . $res['url'];
            $this->assign('url', $url);
            $this->assign('count',$count);
            return $this->fetch();

        }
    }
}