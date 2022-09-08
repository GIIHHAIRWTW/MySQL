show databases;     查询数据库

create database db1;   创建名为db1的数据库
create database if not exists db1;     如果不存在名为db1的数据库，则创建

drop database db1;     删除名为db1的数据库
drop database if exists db1;    如果存在名为db1的数据库，则删除

use db1;    使用名为db1的数据库
select database();      查看当前使用数据库