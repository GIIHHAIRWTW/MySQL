select * from stu;


-- 查询id和name两列
select id,name from stu;


-- 查询地址信息
select address from stu;


-- 去除重复信息
select distinct address from stu;


-- 查询姓名，数学，英语成绩
select name as 姓名,math as 数学,english as 英语 from stu;
select name as 姓名,math 数学,english 英语 from stu;