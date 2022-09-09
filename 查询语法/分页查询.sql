分页查询语法
    select 字段列表 from 表名 limit 起始索引,查询条目数;

计算公式:起始索引=(当前页码-1)*每页显示条数
        * 起始索引:从0开始

tips:
    1.分页查询limit是MySQL数据库的方言
    2.Oracle分页查询使用rownumber
    3.SQL Server分页查询用top


-- 1.从0开始查询,查询3条数据
select * from stu limit 0, 3;

-- 2.每页显示3条数据,查询第1页数据
select * from stu limit 0, 3;

-- 3.每页显示3条数据,查询第2页数据
select * from stu limit 3, 3;

-- 3.每页显示3条数据,查询第3页数据
select * from stu limit 6, 3;