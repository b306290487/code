字符串格式化
 var template1="我是{0}，今年{1}了";
 var template2="我是{name}，今年{age}了";
 var result1=template1.format("loogn",22);
 var result2=template2.format({name:"loogn",age:22});

数组
var arr = [1,"你好",4]; //使用中括号
var arr = new Array(1,"你好",4); // 下标从0开始
arr.length  // 数组长度
arr.push("adf","sfs") //从尾部压入元素
arr.pop()//从尾部弹出一个元素
var a = arr.shift()//从头部取出一个元素
arr.unshift("23") //从头部插入元素
arr.splice(2,1,"asd") // 从任意位子插入 1插入位子，2删除数量，3添加的元素

var obj = new Object(); //引用

for(var key in obj){}
for(var i=0;i<8;i++){}

数据类型转换
parseInt() parseFloat() Boolean() Number() String()

Math.floor()

对象与类
{
var parson = { }
Object.create() 复制对象

创建类  
var Person = Class.extend({
	init: function(isd){
		self.pers = isd
	},
	dance: function(){
		return "aaaaa";
	}
});
继承类
var Ninja = Person.extend({
	init: function(isd){
		this._super(isd);
	},
	dance: function(){
		return this._super();
	}
});
}
