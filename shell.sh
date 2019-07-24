#! /bin/bash

:<<!
your_name="hadoop"  #等号两边不能有空格
echo $your_name  #美元符号取值
echo ${your_name}

for skill in python java c c++;do
    echo "I am good at ${skill}script."  #花括号识别变量边界
done

your_name="tom"
echo $your_name
your_name="alibaba"  #变量重新赋值
echo $your_name

myUrl="http://www.google.com"
readonly myUrl  #只读变量
myUrl="http://www.runoob.com"  #不能重新赋值

myUrl="http://www.runoob.com"
unset myUrl  #删除变量
echo $myUrl  #此时只会输出换行

name="runoob"
your_name='alibaba $name'  #单引号里的内容原样输出
str="Hello, I know you are \"$your_name\"!"
echo $str

echo "***分割线***"

name='runoob'
str="Hello, I know you are \"$name\"!"
echo -e $str

your_name="runoob"
echo "***使用双引号拼接***"
greet="hello, "$your_name" !"
greet1="hello, ${your_name}"
echo $greet $greet1  #拼接的变量之间有空格
echo ${greet}${greet1}  #拼接的变量间没有空格

echo ***使用单引号拼接***
greet2='hello, '$your_name' !'
greet3='hello, ${your_name}'
echo $greet2 $greet3

string="abcd"
echo "字符串的长度：${#string}"  #获取字符串长度

string="http://www.runoob.com"
echo domain is ${string:7:20}  #提取子字符串

string="you have a good tooth."
echo `expr index "$string" ot`  #获取子字符串第一次出现的位置

array=(1, 2, 3, "4", "bash", 'ubuntu')
echo ${array[@]}

array[0]=1
array[2]=2
array[10]=10
echo ${array[@]}

array=(1, ubuntu, 'bash', 123, 'git', "ubuntu")
echo ${#array[@]}  #6
echo ${#array[0]}  #2
echo ${#array[1]}  #7
echo ${#array[2]}  #5
echo ${#array[3]}  #4
echo ${#array[4]}  #4
echo ${#array[5]}  #6


echo "*** Shell 传递参数实例！***"
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "第二个参数为：$2"
echo "第三个参数为：$3"

echo "*** \$#演示 ***"
echo "参数个数：$#"

echo "*** \$*演示 ***"
echo "所有参数：$*"

echo "*** \$@演示 ***"
echo "所有参数：$@"

echo "*** \$?演示 ***"
echo "命令的退出状态：$?"

echo "*** \$$演示 ***"
echo "当前进程ID：$$"

echo "*** \$!演示 ***"
echo "后台运行的最后一个进程ID：$!"

echo "***\$* 和\$@区别***"
for i in "$*";do
    echo $i  # $*将所有参数作为一个整体输出
done

for i in $@;do
    echo $i  # $@将所有参数一个个输出
done

array=(A B "C" D)
echo ${array[@]}
echo ${array[0]}
echo $0
echo ${#array[1]}

a=10
b=20
echo "***算术运算符***"
val=`expr $a + $b`
echo "a+b=$val"
val=`expr $a - $b`
echo "a-b=$val"
val=`expr $a \* $b`
echo "a×b=$val"
val=`expr $a / $b`
echo "a/b=$val"
val=`expr $a % $b`
echo "a%b=$val"
if [ $a == $b ]
then
    echo "a 等于 b"
fi
if [ $a != $b ]
then
    echo "a 不等于 b"
fi

:<<!
echo "***关系运算符***"
a=10
b=20
if [ $a -eq $b ]
then
    echo "a 等于 b"
else
    echo "a 不等于 b"
fi
if [ $a -ne $b ]
then
    echo "a 不等于 b"
else
    echo "a 等于 b"
fi
if [ $a -gt $b ]
then
    echo "a 大于 b"
else
    echo "a 不大于 b"
fi
if [ $a -lt $b ]
then
    echo "a 小于 b"
else
    echo "a 不小于 b"
fi
if [ $a -ge $b ]
then
    echo "a 大于等于 b"
else
    echo "a 小于 b"
fi
if [ $a -le $b ]
then
    echo "a 小于等于 b"
else
    echo "a 大于 b"
fi

echo "***位运算符***"
a=10
b=20
if [ $a != $b ]
then
    echo "a 不等于 b"
else
    echo "a 等于 b"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
    echo "$a 小于 100 且 $b 大于 15: true"
else
    echo "$a 小于 100 且 $b 大于 15: false"
fi
if [ $a -lt 100 -o $b -gt 15 ]
then
    echo "$a 小于 100 或 $b 大于 15: true"
else
    echo "$a 小于 100 或 $b 大于 15: false"
fi
if [ $a -lt 5 -o $b -gt 100 ]
then
    echo "$a 小于 5 或 $b 大于 100: true"
else
    echo "$a 小于 5 或 $b 大于 100: false"
fi

echo "***逻辑运算符***"
a=10
b=20
if [[ $a -lt 100 && $b -gt 100 ]]
then
    echo "$a 小于 100 且 $b 大于100:true"
else
    echo "$a 小于 100 且 $b 大于100:false"
fi
if [[ $a -lt 100 || $b -gt 100 ]]
then
    echo "$a 小于 100 或 $b 大于100:true"
else
    echo "$a 小于 100 或 $b 大于100:false"
fi

echo "***字符串运算符***"
a="abc"
b="efg"
if [ $a = $b ]
then
    echo "$a = $b:true"
else
    echo "$a = $b:false"
fi
if [ $a != $b ]
then
    echo "$a != $b:true"
else
    echo "$a != $b:false"
fi
if [ -z $a ]
then
    echo "字符串长度为0"
else
    echo "字符串长度不为0"
fi
if [ -n $a ]
then
    echo "字符串长度不为0"
else
    echo "字符串长度为0"
fi
if [ $a ]
then
    echo "字符串不为空"
else
    echo "字符串为空"
fi

echo "***文件测试运算符***"
file="/home/hadoop/demo.py"
if [ -r $file ]
then
    echo "文件可读"
else
    echo "文件不可读"
fi
if [ -w $file ]
then
    echo "文件可写"
else
    echo "文件不可写"
fi
if [ -x $file ]
then
    echo "文件可执行"
else
    echo "文件不可执行"
fi
if [ -d $file ]
then 
    echo "文件是目录"
else
    echo "文件不是目录"
fi
if [ -f $file ]
then
    echo "文件为普通文件"
else
    echo "文件为特殊文件"
fi
if [ -s $file ]
then
    echo "文件不为空"
else
    echo "文件为空"
fi
if [ -e $file ]
then
    echo "文件存在"
else
    echo "文件不存在"
fi

echo "***echo***"
echo "It is a test."
echo It is a test.  #同上一个相同
echo "\"It is a test.\""  #显示转义字符
echo -e "请输入：\c"
read name  #标准输入读取一行
echo "$name It is a test."
echo -e "OK! \nIt is a test."  #开启转义
echo -e "OK! \c"  #不换行
echo "It is a test"
echo "It is a test." > demo.py  #结果重定向到文件
echo '$name\"'  # 原样输出
echo `date +"%F %T"`  #显示命令执行结果
echo `date +"%x %X"`

printf "***printf***"
printf "%:10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4s\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4s\n" 杨过 男 48.6543
printf "%-10s %-8s %-4s\n" 郭芙 女 47.6543

printf "%d %s\n" 1 abc
printf '%d %s\n' 1 abc  # 单引号也可以
printf %s abc  # 没有引号也可以
printf %s abc def  # 多余参数按照相同格式输出
printf "%s\n" abc def
printf "%s %s %s\n" a b c d e f g
printf "%s and %d \n"  # 无参数时，%s用null填充，%d用0填充

printf "a string, no processing:<%s>\n" "A\nB"
printf "a string, no processing:<%b>\n" "A\nB"
printf "www.runoob.com \a"

echo "***test***"
echo "***1.数值测试***"
num1=100
num2=100
if test $num1 -eq $num2  # [ $num1 -eq $num2 ]
then
    echo "num1 = num2"
else
    echo "num1 != num2"
fi

a=5
b=6
result=$[a+b]  # []执行算术运算
echo "result=$result"

echo "***2.字符串测试***"
str1="ru1noob"
str2="runoob"
if test $str1 = $str2
then
    echo "两个字符串相等"
else
    echo "两个字符串不相等"
fi

echo "***3.文件测试***"
file="/home/hadoop/test.sh"  # 输入绝对路径
if test -e $file  # [ -e $file ]
then
    echo "文件存在"
else
    echo "文件不存在"
fi
if test -e ~/test.sh -o -e /home/hadoop/test.sh
then
    echo "至少一个存在"
else
    echo "一个都不存在"
fi

echo "***控制流程***"
echo "***1.if elif else***"
a=10
b=20
if test $a = $b
then
    echo "a 等于 b"
elif test $a -gt $b
then
    echo "a 大于 b"
else
    echo "a 小于 b"
fi

echo "***2.for***"
for value in 1 2 3 4 5
do
    echo "The value is : $value"
done

for str in "This is a string."
do
    echo $str
done

echo "***3.while***"
n=1
while [ $n -le 5 ]
do
    echo $n
    #((n++))
    #let "n++"
    #let n++
    #let n+=1
    #n=`expr $n + 1`
    n=$[$n+1]
done

echo "***4.util***"
a=0
until [ ! $a -le 9 ]
do
    echo $a
    let a+=1
done

echo "***5.case***"
echo -e "请输入数字：\c"
read num 
case $num in
    1) echo "1"
        ;;
    2) echo "2"
        ;;
    3) echo "3"
        ;;
    *) echo "no"
        ;;
esac

echo "***6.break和continue***"
while :
do
    echo -e "请输入数字：\c"
    read num
    case $num in
        1|2|3) echo "你输入的数字为$num"
            ;;
        *) echo "你输入的数字不是1~3, 游戏结束"
            break  # break
            ;;
    esac
done

while :
do 
    echo -e "请输入数字：\c"
    read num
    case $num in
        1|2|3) echo "你输入的数字为$num"
            ;;
        *) echo "你输入的数字不是1~3"
            continue  # continue
            echo "游戏结束"  # 永远不会执行
            ;;
    esac
done

echo "***函数***"
function demoFun(){
    echo "这是我的第一个shell函数"
}

echo "=====函数开始执行====="
demoFun
echo "=====函数执行完毕====="

function funWithReturn(){
    echo "这个函数会对输入的两个数字相加运算"
    echo -e "请输入第一个数字：\c"
    read num1
    echo -e "请输入第二个数字：\c"
    read num2
    echo "两个数字分别为$num1和$num2"
    return $[num1+num2]
}
funWithReturn
echo "输入的两个数字之和为$?!"

function funWithParam(){
    echo "第一个参数:$1"
    echo "第二个参数:$2"
    echo "第三个参数:$3"
    echo "第十个参数:${10}"
    echo "参数总个数:$#"
    echo "参数字符串整体:$*"
    echo "参数字符串单个:$@"
    echo "当前进程号:$$"
    echo "最后进程号:$!"
}
funWithParam 1 2 3 4 5 6 7 8 9 100 1000

echo "***重定向***"
command1 < infile > outfile  #同时输入输出重定向，从文件infile读取内容，然后将输出写入到outfile
wc -l < demo.py > users  #将文件demo.py的行数输出到文件users
/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃，且无法读取该文件

echo "***文件包含***"
#在test1.sh中输入以下内容
url="www.runoob.com"
#在test2.sh中输入一下内容
source ./test1.sh
echo "菜鸟教程官方网址:$url"
#运行test2.sh的结果为
菜鸟教程官方网址:www.runoob.com
!

echo "\"It is a test.\""  #显示转义字符
