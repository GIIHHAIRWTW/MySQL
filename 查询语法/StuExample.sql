use db1;

-- 删除stu表
drop table if exists stu;


-- 创建stu表
CREATE TABLE stu (
    id int,
    name varchar(20),
    age int,
    sex varchar(5),
    address varchar(100),
    math double(5,2),
    english double(5,2),
    hire_date date
);

-- 添加数据
INSERT INTO stu(id,NAME,age,sex,address,math,english,hire_date) 
VALUES
(1,'码云',55,'男','杭州',66,78,'1995-09-01'),
(2,'麻花疼',45,'女','深圳',98,87,'1998-09-01'),
(3,'马斯克',55,'男','香港',56,77,'1999-09-02'),
(4,'柳白',20,'女','湖南',76,65,'1997-09-05'),
(5,'柳青',20,'男','湖南',86,NULL,'1998-09-01'),
(6,'留的花',57,'男','香港',99,99,'1998-09-01'),
(7,'张学右',22,'女','香港',99,99,'1998-09-01'),
(8,'明日香',18,'女','柏林',100,100,'2021-8-14');