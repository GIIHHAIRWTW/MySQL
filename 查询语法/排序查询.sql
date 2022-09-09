-- select 字段列表 from 表名 order by 排序字段名1 [排序方式1],排序字段名2 [排序方式2]
-- asc 升序排列(默认)
-- desc 降序排列

-- 1.查询学生信息,按照年龄升序排列
select * from stu order by age;

-- 2.查询学生信息,按照数学成绩降序排列
select * from stu order by math desc;

-- 3.查询学生信息,按照数学成绩降序排列,若数学成绩一样,再按照英语升序排列
select * from stu order by math desc,english asc;
