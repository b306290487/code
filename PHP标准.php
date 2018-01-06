<?php
header("content-type:text/html;charset=utf-8");
//建立连接并且返回连接对象      mysqli_connect_errno()返回错误 编号     mysqli_connect_error()错误提示
$link = mysqli_connect('localhost', 'root', '3889671byk') or die("连接失败<br/>".mysqli_connect_errno().":".mysqli_connect_error());
//设置字符集
mysqli_set_charset($link,'utf8');
//打开指定数据库
mysqli_select_db($link,'text1') or die("打开指定数据库<br/>".mysqli_errno($link).":".mysqli_error($link));
//执行sql语句
$query = "insert user1 values('你大爷')";
$res = mysqli_query($link, $query);
if($res){
    echo '插入成功';
}
else{
    echo '插入失败';
}


局部变量 动态变量 函数结束就释放 静态变量  static 函数结束 值会保持
全局变量 在函数里调用全局变量要 加 global 或 $GLOBALS

函数 引用参数 加& 可改变传递进来变量的值

md5() 加密
函数体内调用 func_num_args(); 获得参数个数 func_get_arg(index) 根据下标获得参数  func_get_args() 获得参数table
get_defined_functions() 获得所有函数
require '';可重复引用 /require_once 引用一次 引用出错会报错
include 引用出错只是警告


class Person{ public $name = 'xx'} 创建类   &p = new Person(); $p->name
public 公共默认   protected 受保护的 private私有的  $this 
构造函数 public function __construct(){} &p = null 析构函数__destruct()

__set($k,$v) __get($k)魔术常量
public function __set($k,$v){
    $this->$k = $v;
}

join 将一个一维数组的值转化为字符串 range 建立一个包含指定范围单元的数组  array_rand — 从数组中随机取出一个或多个单元  array_merge — 合并一个或多个数组  array_flip — 交换数组中的键和值 
join(array_rand(range(1, 9),4));
echo join(array_rand(array_flip(array_merge(range('a', 'z'),range('A', 'Z'))),4));
echo join(array_rand(array_flip(array_merge(range('0', '9'),range('a', 'z'),range('A', 'Z'))),4));

继承 extends   子类里调用父类方法 parent::func; fina 类和方法不能被继承和重写
静态 static 对象不能调用 只能用类名调用 static 静态属性 存放在静态内存中，静态内存不会再方法结束 被释放
this 对象 self 当前类  const 常量 不可改变 只能通过类访问  is_a(对象，类)对象是否属于类  get_class(对象)获得类名 get_parent_class() 

$username = isset($_GET['username'])?$_GET['username']:'';// $_GET 获得 name 为'username'的value
$title = isset($_GET['title'])?$_GET['title']:'';          // isset 判断获得到的是否有值
$content = isset($_GET['content'])?$_GET['content']:'';
$xinqing = isset($_GET['xinqing'])?$_GET['xinqing']:'';
$time = date('Y-m-d h:i:s');                    //获取时间
$act = isset($_GET['act'])?$_GET['act']:'';
$filename = 'text.txt';
if (file_exists($filename)&&filesize($filename)>0){  //file_exists 判断是否有这个文件 filesize获得文件大小
    $str = file_get_contents($filename);            //获得文件内容
    $arr = unserialize($str)                        //通过反序列化把字符转化成为我们的二维数组
};
$arr[] = array(
    'username' => $username,
    'title' => $title,
    'content' => $content,
    'xinqing' => $xinqing,
    'time' => $time
);

$arr = serialize($arr);  //数据序列化  a:4:{i:0;i:1;i:1;s:6:"小马";i:2;b:0;i:3;d:5.5;} 
file_put_contents($filename, $arr);   //写数据


echo '<pre>' $arr '</pre>' //看数组的时候好看
    
print_r() = dump
phpinfo(); 输出php详细信息
