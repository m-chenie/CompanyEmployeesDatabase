Create table employee(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    start_date DATE,
    sex VARCHAR(1),
    salary INT,
    branch_id INT
);

Create table branch(
    branch_id INT primary key,
    street_address varchar(20),
    city varchar(20),
    postal_code varchar(6),
    province varchar(20)
);

alter table employee
add foreign key(branch_id)
references branch(branch_id)
on delete set null;

insert into branch values(1, '123 Street Ave', 'Toronto', 'M4F7J3', 'Ontario');
insert into branch values(2, '45 West Rd', 'Calgary', 'M4G7U7', 'Alberta');
insert into branch values(3, '34 Dundas St', 'Toronto', 'M9P7U7', 'Ontario');

insert into employee values(10, 'Miranda', 'Chen', '2020-01-19', 'F', 25000, 1);
insert into employee values(11, 'Victoria', 'Smith', '2020-05-19', 'F', 35000, 1);
insert into employee values(12, 'Aaron', 'Wang', '2021-07-09', 'M', 25000, 2);
insert into employee values(13, 'Maggie', 'Doe', '2019-05-15', 'F', 35000, 3);
insert into employee values(14, 'Jin', 'Ya', '2020-09-05', 'M', 25000, 3);
insert into employee values(15, 'David', 'Ian', '2021-06-11', 'M', 35000, 2);
insert into employee values(16, 'Erin', 'Chow', '2018-07-18', 'F', 25000, 2);
insert into employee values(17, 'Vicky', 'Lu', '2020-03-17', 'M', 35000, 3);
insert into employee values(18, 'Mike', 'Oxsmall', '2022-09-12', 'M', 25000, 1);

/* prints out employee and branch table */
select * from employee order by employee.branch_id;
select * from branch;
