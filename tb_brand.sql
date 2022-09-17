drop table if exists tb_brand;

create table tb_brand(
    id int primary key auto_increment,
    brand_name varchar(20),
    company_name varchar(20),
    ordered int,
    description varchar(100),
    status int
);

insert into tb_brand(brand_name,company_name,ordered,description,status) 
values ('三只松鼠','三松股份有限公司',5,'好吃不贵',0),
      ('华为','华为技术有限公司',100,'华为致力于把数字世界带入每个人、每个家庭、每个组织，构建万物互联的智能世界',1),
      ('小米','小米科技有限公司',50,'are you ok',1);


select * from tb_brand;
