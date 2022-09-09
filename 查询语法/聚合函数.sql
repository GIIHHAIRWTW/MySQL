聚合函数:
    1.count(列名)   统计数量(一般选用不为null的列)
    2.max(列名)     最大值
    3.min(列名)     最小值
    4.sum(列名)     求和
    5.avg(列名)     平均值
语法: select 函数名(列名) from 表
注意: null值不参与所有聚合函数运算



-- 1.统计班级一共多少学生
select count(id) from stu;  -- count 统计的列不能为null
select count(*) from stu;

-- 2.查询数学最高分
select max(math) from stu;

-- 3.查询数学最低分
select min(math) from stu;

-- 4.查询数学总分
select sum(math) from stu;

-- 5.查询数学平均分
select avg(math) from stu;

-- 6.查询英语最低分
select min(english) from stu;