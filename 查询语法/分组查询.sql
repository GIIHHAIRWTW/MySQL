分组函数
    select 字段列表 from 表名 [where 分组前条件限定] group by 分组字段名 [having 分组后条件过滤]...;


-- 1.查询男同学和女同学各自的数学平均分
select sex,avg(math) from stu group by sex;

-- 2.查询男同学和女同学各自的数学平均分,以及各自的人数
select sex,avg(math),count(*) from stu group by sex;

-- 3.查询男同学和女同学各自的数学平均分,以及各自的人数,分数低于70的不参与分组
select sex,avg(math),count(*) from stu where math > 70 group by sex;

-- 4.查询男同学和女同学各自的数学平均分,以及各自的人数,分数低于70的不参与分组,分组之后人数大于2的
select sex,avg(math),count(*) from stu where math > 70 group by sex having count(*) > 2;