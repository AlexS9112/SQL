create table employees( 
   id serial primary key,
   employee_name varchar(50) not null
);

insert
	into
	employees (employee_name)
values 
('Лев Абрамов'),
('Владимир Абрамов'),
('Полина Абрамова'),
('Александра Алексеева'),
('Владислав Анохин'),
('Кирилл Антонов'),
('Валерия Антонова'),
('Пётр Артамонов'),
('Михаил Белкин'),
('Михаил Березин'),
('Виктория Борисова'),
('Виктория Виноградова'),
('Мария Воронова'),
('Валерия Гусева'),
('Тихон Давыдов'),
('Даниил Денисов'),
('Екатерина Жданова'),
('Владислав Жуков'),
('Ксения Захарова'),
('Сергей Иванов'),
('Алиса Иванова'),
('Мирослава Иванова'),
('Павел Кириллов'),
('Алексей Князев'),
('Анастасия Козина'),
('Роберт Козлов'),
('Арина Колесникова'),
('Анна Константинова'),
('Дмитрий Корнилов'),
('Вера Круглова'),
('Василиса Крылова'),
('Марк Кузнецов'),
('София Кузнецова'),
('Дарья Кузьмина'),
('София Куликова'),
('Олег Лапин'),
('Милана Леонтьева'),
('Даниил Майоров'),
('Александр Максимов'),
('Александра Максимова'),
('Екатерина Масленникова'),
('Михаил Маслов'),
('Кира Михайлова'),
('Арина Михайлова'),
('Ева Михайлова'),
('Алиса Моисеева'),
('Александр Нефедов'),
('Вячеслав Николаев'),
('Таисия Овчинникова'),
('Ярослав Петров'),
('Вероника Покровская'),
('Роман Попов'),
('Алексей Попов'),
('Мария Попова'),
('Артём Прокофьев'),
('Кира Рожкова'),
('София Синицына'),
('Леонид Смирнов'),
('Кирилл Соболев'),
('Максим Сорокин'),
('Кристина Субботина'),
('Матвей Сычев'),
('Дмитрий Тихомиров'),
('Степан Трошин'),
('София Устинова'),
('Леонид Федоров'),
('Вероника Федорова'),
('Кристина Федотова'),
('Артём Чернышев'),
('Георгий Яковлев');

create  table salary( 
   id serial primary key,
   monthly_salary int not null
);

insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
       
create  table employee_salary( 
   id serial primary key,
   employee_id int not null unique, 
   salary_id int not null
);       

insert  into employee_salary (employee_id, salary_id)
values 
(3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(24, 6),
(25, 4),     
(27, 8),
(28, 2),
(29, 1),
(30, 9),
(31, 6),
(32, 3),
(45, 9),
(34, 10),
(35, 12),
(36, 11),     
(37, 2),
(38, 5),
(39, 8),
(41, 7),
(42, 4),
(43, 13),
(44, 7),
(80, 1),
(79, 2),
(78, 2),     
(77, 3),
(76, 4),
(75, 7),
(74, 9),
(73, 8),
(72, 7),
(71, 5);

create table roles (
id Serial primary key,
role_name int not null unique
);

alter table roles alter column role_name TYPE VARCHAR(30) ;

insert into roles (role_name)
values 
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

create table roles_employee(
id serial primary key,
employee_id int not null unique references employees(id), 
role_id int not null references roles(id)
);

insert into roles_employee(employee_id, role_id)
values 
(7 ,2),
(20, 4),
(3,9),
(5, 13),
(24, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(23, 5),
(50, 7),
(25, 9),
(26,11),
(27, 12),
(28, 13),
(29, 1),
(30, 3),
(31, 2),
(32, 9),
(33, 6),
(35, 3),
(36, 8),
(37, 9),
(38, 2),
(39, 7),
(40, 8),
(41, 5),
(42, 3),
(43, 9),
(44, 6),
(45, 7),
(46, 2),
(47, 7),
(48, 2),
(49, 1);









select * from roles_employee
       
       
       
       
       
       
       
       

