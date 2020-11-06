Drop Table Doctors;
Drop Table Pacients;
Drop Table Diseases;
Drop Sequence seq_1;
Drop Table table_for_test_seq_1;

Create Table Doctors 
(
	id int not null IDENTITY(1,1),
	PRIMARY KEY (Id),
    Full_Name nchar(30) not null,
    Specialty nchar(30) not null,
	Office_Number smallint not null,
    District tinyint not null,
    Mo bit,
    Tu bit,
    We bit,
    Th bit,
    Fr bit,
	Sa bit,
	Su bit,
    Start_Working_Hours time(0),
    End_Working_Hours time(0)
);
Insert into
"Doctors" ("Full_Name","Specialty","Office_Number","District", "Mo","Tu","We","Th","Fr","Sa","Su", "Start_Working_Hours", "End_Working_Hours")
Values 
('Кузьмина О.Е.',		'Врач-терапевт участковый',		'101',		'3',	'1','1','1','1','1','0','0',	'08:30','13:30'),
('Ильина Е.В.',			'Врач-терапевт участковый',		'102',		'3',	'1','1','1','1','1','0','0',	'12:00','19:00'),
('Заппарова Д.Р.',		'Врач-фельдшер участковый',		'103',		'3',	'1','1','1','1','1','0','0',	'15:00','19:00'),
('Кузнецова В.Г.',		'Врач-терапевт участковый',		'104',		'3',	'1','1','1','1','1','0','0',	'08:00','12:00'),
('Васильева М.В.',		'Врач-терапевт участковый',		'105',		'3',	'1','1','1','1','1','0','0',	'08:00','13:00'),
('Соснина З.А.',		'Врач-терапевт участковый',		'106',		'3',	'1','1','1','0','0','0','0',	'13:00','18:00'),
('Зенкина Н.А.',		'Врач-терапевт участковый',		'107',		'3',	'1','1','1','1','1','0','0',	'08:00','16:00'),
('Алексеева Т.П.',		'Врач-терапевт участковый',		'108',		'3',	'0','0','1','1','1','0','0',	'08:00','13:00'),
('Жиркова А.Е',			'Врач-терапевт участковый',		'109',		'3',	'1','1','1','1','1','0','0',	'08:00','13:00'),
('Огородникова Л.Н.',	'Врач-терапевт участковый',		'110',		'3',	'0','0','0','0','0','0','0',	'00:00','00:00');
Insert into
"Doctors" ("Full_Name","Specialty","Office_Number","District", "Mo","Tu","We","Th","Fr","Sa","Su", "Start_Working_Hours", "End_Working_Hours")
Values ('Хасавова Р.И.','Врач-педиатр','214','12',	'1','0','1','0','1','0','1', '08:00','12:00');
Insert into "Doctors" Values
('Азлецкая В.А.','Фельдшер','212','13',	'0','1','0','1','0','1','0', '15:00','19:00');
Update "Doctors"
Set "Full_Name" = 'Кузьмина Е.О.', "Office_Number" = 111
Where "Full_Name" = 'Кузьмина О.Е.';
Delete from "Doctors" Where "Full_Name" = 'Кузьмина Е.О.';


Create Table Pacients 
(
	id int not null IDENTITY(1,1),
	PRIMARY KEY (Id), 
    Full_Name nchar(30),
    Disease nchar(30),
	Patient_Address nchar(100),
    Admitted_Day date
);
Insert into
"Pacients" ("Full_Name","Disease","Patient_Address","Admitted_Day")
Values
('Филиппов П.А.',	'Ангина',		'г.Тула, ул.Курковая, д.3a, кв.24',			'10.10.2020'),
('Аркина З.П.',		'Бронхит',		'г.Щекино, ул.Емельянова, д.127, кв.405',	'01.11.2020'),
('Муркин В.С.',		'Пневмония',	'г.Тула, ул.Ствольная, д.9, кв.37',			'25.10.2020');

Create Table Diseases
(
	id int not null IDENTITY(1,1),
	PRIMARY KEY (Id),
	Disease nchar(30) not null,
	Symptoms nchar(200),
	Recommended_Medicine nchar(200),
	Сhance_Of_Infection float(1)
);
Insert into
"Diseases" ("Disease", "Symptoms", "Recommended_Medicine", "Сhance_Of_Infection")
Values
('Ангина',		'Болевые ощущения в горле, миндалины увеличиваются, приобретают ярко-красную окраску, затрудненное, болезненное глотание, высокая температура тела',	'Гриппферон, Кагоцел, Амоксициллин, Парацетамол',		'0.7'),
('Бронхит',		'Одышка и боли в области грудины, озноб, потливость, рассеянные хрипы и жесткое дыхание при аускультации, высокая температура тела',					'Амоксициллин, Макропен, Офлоксацин, Цефтриаксон',		'0.7'),
('Пневмония',	'Одышка, общая слабость, интоксикация организма, сопровождающаяся рвотой, высокая температура тела, кашель с мокротой или кровью, головная боль',		'Оксациллин, Цефтриаксон, Кларитромицин, Доксициклин',	'0.8');
Update "Diseases" Set "Recommended_Medicine" = "Symptoms" Where "Disease" = 'Ангина';
Insert into "Diseases" ("Disease","Symptoms","Recommended_Medicine","Сhance_Of_Infection")
Select "Full_name","Office_number","District","Mo" From "Doctors" Where "id" = 4;

Create Sequence seq_1
as int
minvalue 1
start with 1
increment by 1
maxvalue 5
cache 1;

Create Table table_for_test_seq_1
(
id int,
primary key(id),
val int
);
Insert into "table_for_test_seq_1"
values
(next value for seq_1, 11),
(next value for seq_1, 12),
(next value for seq_1, 13),
(next value for seq_1, 14);
Insert into "table_for_test_seq_1"
output
Inserted.id
values
(next value for seq_1, 15);

Select* from "table_for_test_seq_1";
Select* from "Doctors";
Select* from "Pacients";
Select* from "Diseases";


Delete from "Doctors";
Delete from "Pacients";
Delete from "Diseases";