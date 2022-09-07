/*
1.编号
2.姓名，最长不超过10个汉字
3.性别，最多一个汉字
4.生日，年月日
5.入学成绩，小数点后两位
6.邮箱，最长不超过64位
7.家庭联系电话，不一定是手机号码，可能会出现-等字符
8.学生状态(用数字表示，正常、休学、毕业...)
*/

use db1;
create table student(

    id int,
    name varchar(10),
    gender char(1),
    birthday date,
    score double(5,2),
    email varchar(64),
    tel varchar(15),
    status tinyint
);