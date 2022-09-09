select * from stu;

-- 1.查询年龄大于20的学员信息
select * from stu where age > 20;

-- 2.查询年龄大于等于20的学员信息
select * from stu where age >= 20;

-- 3.查询年龄大于等于20，小于等于30的学员信息
select * from stu where age >= 20 && age <= 30;
select * from stu where age >= 20 and age <= 30;
select * from stu where age between 20 and 30;

-- 4.查询入学时间在1998-09-01到1999-09-01之间的学员信息
select * from stu where hire_date between '1998-09-01' and '1999-09-01';

-- 5.查询年龄等于18的学员信息
select * from stu where age = 18;

-- 6.查询年龄不等于18的学员信息
select * from stu where age != 18;
select * from stu where age <> 18;

-- 7.查询年龄等于18，20，或22的学员信息
select * from stu where age = 18 || age = 20 || age = 22;
select * from stu where age = 18 or age = 20 or age = 22;
select * from stu where age in (18,20,22);

-- 8.查询英语成绩为NULL的学员信息
-- null值的比较不能使用 = 和 != 需要使用is 和 is not
select * from stu where english is null;