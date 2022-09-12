-- 部门表
create table dept(
    id int primary key auto_increment,
    dep_name varchar(20),
    addr varchar(20)
);

-- 员工表
create table emp (
    id int primary key auto_increment,
    name varchar(20),
    age int,
    dep_id int,

    -- 添加外键，dep_id,关联 dept 表的id主键
    constraint fk_emp_dept foreign key(dep_id) references dept(id)
);

-- 删除外键
alter table emp drop foreign key fk_emp_dept;

-- 添加外键
alter table emp add constraint fk_emp_dept foreign key(dep_id) references dept(id);

-- 添加两个部门
insert into dept(dep_name,addr) values ('研发部','广州'),("销售部","深圳");

-- 添加员工
insert into emp (name,age,dep_id) values 
('张三',20,1),('李四',20,1),('王五',20,1),('赵六',20,2),('孙七',22,2),('周八',18,2);

select * from dept;
select * from emp;

drop table dept;
drop table emp;