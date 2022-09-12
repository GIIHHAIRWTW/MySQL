-- 订单表
create table tb_order(
    id int primary key auto_increment,
    payment double(10,2),
    payment_type tinyint,
    status tinyint
);

-- 商品表
create table tb_goods(
    id int primary key auto_increment,
    title varchar(100),
    price double(10,2)
);

-- 订单商品中间表
create table tb_order_goods(
    id int primary key auto_increment,
    order_id int,
    goods_id int,
    count int
);

-- 添加外键
alter table tb_order_goods add constraint fk_order_id foreign key(order_id) references tb_order(id);
alter table tb_order_goods add constraint fk_goods_id foreign key(goods_id) references tb_goods(id);
