1.非空约束      列中数据不能有null
2.唯一约束      列中数据各不相相同
3.主键约束      主键是一行数据的唯一标识，非空且唯一
4.检查约束      保证列中数据满足某一条件
5.默认约束      保存数据时，未指定值则采用默认值
6.外键约束      用于在两个表的数据之间建立链接，保证数据一致性和完整性

tips：MySQL不支持检查约束

use db1;

create table emp (
    id int PRIMARY KEY aoto_increment, -- 员工id,主键且自增
    ename varchar(10) not null unique, -- 员工姓名,非空且唯一
    joindate date not null, -- 入职日期,非空
    salary double(7,2) not null, -- 工资,非空
    bonus double(7,2) default 0 -- 奖金,默认为0
);


insert into emp(id,ename,joindate,salary,bonus) values(1,'张三','1999-11-11',8800,5000);

-- 演示主键约束，非空且唯一
insert into emp(id,ename,joindate,salary,bonus) values(null,'张三','1999-11-11',8800,5000);
insert into emp(id,ename,joindate,salary,bonus) values(1,'张三','1999-11-11',8800,5000);
insert into emp(id,ename,joindate,salary,bonus) values(2,'李四','1999-11-11',8800,5000);

-- 演示非空约束
insert into emp(id,ename,joindate,salary,bonus) values(3,null,'1999-11-11',8800,5000);

-- 演示唯一约束
insert into emp(id,ename,joindate,salary,bonus) values(3,'李四','1999-11-11',8800,5000);

-- 演示默认约束
insert into emp(id,ename,joindate,salary) values(3,'王五','1999-11-11',8800);
insert into emp(id,ename,joindate,salary,bonus) values(4,'赵六','1999-11-11',8800,null);

-- 演示自动增长，auto_increment:当列是数字类型，且唯一约束
insert into emp(ename,joindate,salary,bonus) values('李四','1999-11-11',8800,5000);
insert into emp(id,ename,joindate,salary,bonus) values(null,'李四','1999-11-11',8800,5000);


select * from emp;