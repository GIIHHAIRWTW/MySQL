_:代表单个任意字符
%:代表任意个字符

-- 1.查询姓'马'的学员信息
select * from stu where name like '马%';

-- 2.查询第二个字是'花'的学员信息
select * from stu where name like '_花%';

-- 3.查询名字中包含'德'的学员信息
select * from stu where name like '%德%';