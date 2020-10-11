Drop Table Doctors;

Create Table Doctors (
	id int not null IDENTITY(1,1), 
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

Select* from "Doctors";
Delete from "Doctors";

Drop Table Pacients;

Create Table Pacients (
	id int not null IDENTITY(1,1), 
    Full_Name nchar(30),
    Disease nchar(30),
	Patient_Address nchar(50),
    Admitted_Day date
);
Insert into
"Pacients" ("Full_Name","Disease","Patient_Address","Admitted_Day")
Values('Èâàíîâ È.È.', 'ÎÐÂÈ', 'ã.Àíèìå, ä.×àéíûé','10.10.2020');