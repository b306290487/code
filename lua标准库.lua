1、math.abs(x)	功能：返回x的绝对值

2、math.acos(x)	功能：函数返回参数x的反余弦值。参数x 应当在-1和1之间

3、math.asin(x)	功能：函数返回参数x的反正弦值。参数x 应当在-1和1之间。

4、math.atan(x)	功能：函数返回参数x的反正切值

5、math.atan2(x, y)	功能：函数计算y/x的反正切值(当y=0时依然适用)

6、math.ceil(x)	功能：函数返回参数不小于x的最小整数。例如ceil(6.04) = 7

7、math.cos(x)	功能： 函数返回参数x的余弦值，x以弧度表示给出。

8、math.cosh(x)	功能： 函数返回参数x的双曲余弦值。

9、math.deg(x)	功能： 函数返回参数x的度数，x以弧度表示给出。

10、math.exp(x)	功能：函数返回 e (2.7182818) e的x次幂

11、math.floor(x)	功能：函数返回参数不大于arg的最大整数。如floor(6.04) = 6

12、math.fmod(x,y)	功能：函数返回参数x/y的余数

13、math.frexp(x)	功能：函数将参数x 分成两部分返回： m 0.5 和1之间的尾数(当x为0时为0)和指数 e。x=m2e

14、math.huge	功能：返回一个大于所有数值的数 HUGE_VAL

15、math.ldexp(m,e)	功能：与frexp相反，返回参数num * (2 ^ exp)。如果发生溢出返回HUGE_VAL

16、math.log(x)	功能： 函数返回参数x的自然对数。如果x为负,产生域错误;如果x 为零，产生范围错误。

17、math.log10(x)	功能： 函数返回参数x以10为底的对数。如果x为负,产生域错误;如果x为零，产生范围错误

18、math.max(x,...)	功能： 函数返回所有参数的最大值

19、math.min(x,...)	功能： 函数返回所有参数的最小值

20、math.modf(x)	功能： 函数将参数num 分割为整数和小数

21、math.pi	功能： 函数将返回PI值

22、math.pow(x,y)	功能： 函数返回以参数x 为底的y 次幂。如果x为零或负和y 小于等于零或非整数时,产生域错误。如果溢出，产生范围错误

23、math.rad(x)	功能：函数返回x的弧度，x为度数

24、math.random([m [,n]])	功能：返回 [m,n]之间的数，当只有m值，则返回[1,m]的数

25、math.randomseed(x)	功能：设置随机种子x

26、math.sin(x)	功能： 函数返回参数arg的正弦值，arg以弧度表示给出。

27、math.sinh(x)	功能： 函数返回参数arg的双曲正弦值

28、math.sqrt(x)	功能： 函数返回参数x的平方根或1/2方根。如果num为负,产生域错误。

28、math.tan(x)	功能： 函数返回参数arg的正切值，arg以弧度表示给出。

28、math.tanh(x)	功能： 函数返回参数arg的双曲正切值。

math.mod(v1.Id,10) --取个位数
math.mod(v1.Id,100) --取个位个十位

string.len(s):返回字符串的长度；

string.sub(s,i [,j]):取s中从i开始到j为止的字符串.默认j为长度.-i表示倒数第几位；

string.byte(string [,pos]):返回第pos个字符的整数表示形式.如a为97.同样pos为负是倒着数；

string.char(i1,i2...):i1,i2为整型,将i1,i2..等转化为对应的字符然后连接成字符串,并返回.如i1=97则返回a；

string.dump(functoin):返回给定函数的二进制表示的字符串，之后在其上应用loadstring返回函数的拷贝。function必须是不带upvalue的Lua函数；

string.find(s,pattern [,init [,plain]]):查找pattern在s中的位置,返回pattern在s中的开始位置和结束位置.init是开始查找的位置(支持负索引).plain:true 将关闭样式简单匹配模式,变为无格式匹配

string.lower(s):转换为小写；

string.upper(s):转换为大写；

string.rep(s,n):将字符串s复制n份并连接起来返回；

string.gfind(s,pat):在字符串s中查找匹配正则pat的子字符串；
