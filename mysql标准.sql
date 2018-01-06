登入 mysql -uroot -p       
退出quit exit \q  	
查看基础信息\s	
显示当前版本select version();	
显示当前时间select now();	
显示当前用户select user();	
写入本地\T D:\mysqldemo\mysql.txt 	
结束本地写入\t		
创建数据库 create database db-name character = utf-8	
查看数据库 show databases	
查看指定数据库 show create database db-name character = utf-8 
设置字符编码集 alter database db-name default character set utf8; 	
打开数据库use db_name 	
查看当前是哪个数据库select database();
删除数据库 drop database db_name;
删除数据库 drop table tb_name;
显示创建表的形式 show create table tbname;

查看表 show tables
查询指定表结构 1 DESC name 2 DESCRIBE name 3 SHOW COLUMNS FROM name

数据类型
help int; 查看取值范围
TINIINT 有符号值  -128~127 无符号值0~255
SMALLINT    -32768~32767		0~65535
MEDIUMINT   -8388608~8388607    0~16777215
INT    -2147683648~2147683647   0~4294967295
BIGINT -9223300000000000000~9223300000000000000
		18000000000000000000
FLOAT  DOUBLE 	DECIMAL
CHAR定长 VARCHAR变长 TINITEXT TEXT MEDIUMTEXT LOGTEXT ENUM SET
TIME 存储时间 DATE 存储日期 DATETIME 存储日期和时间 TIMESTAMP 存储时间戳 YEAR存储年份
		
MSQ存储引擎 
查看引擎 show engines|show engines\G
显示支持的存储引擎信息 show variables like 'have%'
查看默认的存储引擎 show variables like 'storage_engine'
常用引擎 InnoDB MyISam MEMORY 默认引擎 InnoDB 
InnoDB 
1.事务、回滚、和修复能力、多版本、并发控制事务安全
2.优点 支持外键、事务、多并发
缺点：读写效率低，占用空间大
MyISam
frm:存储表结构 myd存储数据 myi 存储引擎
通过MyISam存储的表有三种类型
默认静态类型：字段固定长度 动态型：变长字段
压缩型：myisampack工具进行创建，占用磁盘小
优点 速度快 占用空间小  缺点 不支持事务、没有并发性

事务;能确保一次操作的完整性  在数据库操作是非常重要的
MEMORY
存储在内存当中
优点：速度快  缺点存储的数据小 死机数据会丢失

创建表
varchar(20)
5.0版本以上，varchar(20)，指的是20字符，无论存放的是数字、字母还是UTF8汉字（每个汉字3字节），都可以存放20个，最大大小是65532字节 ；
float(6,2) 而是指这个浮点数最大长度为6，也就是六位，然后小数部分为2位。

创建表 CREATE table IF NOT EXISTS name()ENGINE=INNODB；  --IF NOT EXISTS  表明重复也要创建 ENGINE=INNODB引擎类型
完整性的约束条件  
PRIMARY KEY主键			主键不一定自增长
AUTO_INCREMENT自增长    自增长的都是主键
KEY AUTO_INCREMENT主键自增长
FOREIGN KEY外键
NOT NULL非空
UNIQUE KEY唯一
DEFAULT 默认值

插入表 INSERT user value|values();
INSERT user2(userName) values('小明');
insert user6(userName,passWrod) values('11111','22222'),('33333','44444');
insert user6 set userName='小马',passWrod='123456';
insert user6[(字段名称,...)] select 字段名称 from user5[WHERE 条件] --从一张表查询数据 存放到另一张表

查询所有 select*from name;
		select id,userName,age,email from tb_name;
		select id,userName,age,email from db_name.tb_name;  --在当前表查询其他数据库中的表
		select id as '编号' from user;  --给id取个别名 为编号
		select  * from user7 where id>5;  --条件查询
		select  * from user7 where age<=>null ; --查询空值写法
		select * from user where id between 5 and 10;  --查询5-10范围；
		select * from user where id not between 5 and 10;  --查询 除了5-10范围；
		select * from user where id in(1,3,5,7,9);  --集合 查询id
		select * from user where id not in(1,3,5,7,9);  --集合 排除指定id
		
		--模糊查询  not like    IS NULL    IS NOT NULL    AND  OR
		select * from user where userName like '小%';  -- % 代表0个1个或者多个任意字符
		select * from user where userName like '小_';  -- _ 代表1个字符
		select * from user where userName like 'c%' and age IS NULL;
		
		--分组
		select * from name group by sex;  -- 根据性别分组
		-- GROUP_CONCAT 查看分组详细信息  count(*) 查看分组数量 max(age)最大,min(age),avg(age)平均,sum(age)总和, 
		--	with rollup 获得所总和;
		select id,sex GROUP_CONCAT(userName),count(*),max(age),min(age),avg(age),sum(age), from user7 group by sex with rollup;  --
		-- having 依赖于 分组筛选  group by   having 二次筛选
		select id,sex GROUP_CONCAT(userName),count(*),max(age),min(age),avg(age),sum(age), from user7 group by sex having count(*)<5;
		
		select * from tb_name order by id desc;  --降序   默认是升序
		select * from tb_name limit 5;   --指定显示数量
		select * from tb_name limit 0,5;   --第一个参数 是从哪里开始 第二表示总共显示多少条信息
		 
		--内连接 多表查询   内连接指同一数据库下的表链接
		select tb1.id,tb1.name,tb2.name from tb2,tb1 where tb2.depid=tb1.id;
		select tb1.id,tb1.name,tb2.name from tb2 join tb1 on  tb1.id=tb2.depid;
		 
		--外链接 左外链接，左边是主表 右外链接
		--作为主表 所有的数据都会显示出来 没有的用NULL显示  从表则不
		select tb1.id,tb1.name,tb2.name from tb2 left join tb1 on  tb1.id=tb2.depid;
		
		--分页查询
		select*from name limit 5; select*from name limit 5,5;
		
		--创建 主表 和 从表 
		create table if not exists staff(
			id tinyint auto_increment key，
			depname varchar(20) not null,
			depId tinyint,
			constraint dep_sta foreign key(depid) references ta1(id) on delete cascade  --绑定主从表id   删除主表项 如果从表里有主表项对应的id 则报错
		);
		
		--删除外键
		alter table tbname drop foreign key dep_sta;
		--添加外键
		alter table tbname add constraint dep_sta foreign key(depid) references ta1(id)
		on delete cascade  --主表删除 从表也删除
		on update cascade  --主表更新 从表也更新
		
添加字段 ALTER TABLE user4 ADD age TINYINT NOT NULL DEFAULT 1;

删除字段 ALTER TABLE user4 drop age;

修改字段 alter table user4 modify addr varchar(30) not null default '福建';

添加主键 alter table user5 add primary key(id);

删除表项 delete from user7;  TRUNCATE user7 清空表 --TRUNCATE user7 会还原自增长
		alter table tb_name AUTO_INCREMENT=1; 自增长还原
	
修改数据 update user7 set userName = '小马';   --无条件全修改
		update user7 set userName = '小gou' where passWrod = '1111';  --指定修改
		
--事务操作  事务可以保证 一个任务的完整性  ，一个任务开启了事务 如果在任务做到第二步 断掉 我们没有执行结束事务的命令  该任务 将回档 第一二步 不会被改变 
--mysql 是默认开启事务的
set autocommit=0; 关闭自动提交
start transaction 开启事务
commit 提交事务
rollback事务回滚 回到开始 完毕事务
