drop table if exists account;

-- 创建账户表
    create table account(
        id int primary key auto_increment,
        name varchar(10),
        money double(10,2)
    );


-- 添加数据
    insert into account(name,money) values('张三',1000),('李四',1000);

select * from account;


-- 转账操作
-- 开启事务
    begin;

-- 1.查询李四的余额

-- 2.李四金额 -500
update account set money = money - 500 where name = '李四';

-- 3.张三金额 +500
update account set money = money + 500 where name = '张三';

-- 提交事务
    commit;
-- MySQL事务默认自动提交
-- 查看事务默认提交方式
    select @@autocommit;
-- 1 自动提交  0 手动提交
-- 修改事务提交方式
    set @@autocommit = 0;

-- 回滚事务
    rollback;