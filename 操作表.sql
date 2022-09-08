show tables;    查询表
desc stu;   查询名为stu的表结构

create table stu(
    字段名1 数据类型1;
    字段名2 数据类型2;
    ...
    字段名n 数据类型n
);                         创建名为stu的表

drop table stu;     删除名为stu的表
drop table if exists stu;   如果存在名为stu的表，则删除


alter table stu rename to student;      修改名为stu的表名为student
alter table stu add score double;    添加一列，列名为score，数据类型为double
alter table stu modify score int;   修改score列的数据类型为int
alter table stu change score grade int;     修改score列名为grade，数据类型为int
alter table stu drop score;     删除score列


insert into stu(id,name,sex) values(1,'zhangsan','男');   给指定的id,name,sex三列添加数据
insert into stu values(2,lisi,'男');       给全部列添加数据
insert into stu(id,name,sex) values(1,'zhangsan','男'),(2,'lisi','男'),...;     给指定列批量添加数据
insert into stu values(1,zhangsan,'男'),(2,lisi,'男'),...;      给全部列批量添加数据


update stu set id=3,sex='女' where name='zhangsan';     修改id和sex，条件是name='zhangsan'


delete from stu where name='lisi';      删除数据，条件是name='lisi'