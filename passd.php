<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/10
 * Time: 15:05
 */
//echo md5(111111);
$str =  'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
echo $str;
echo "<br>";
echo substr($str,0,strpos($str, 'passd.php'));