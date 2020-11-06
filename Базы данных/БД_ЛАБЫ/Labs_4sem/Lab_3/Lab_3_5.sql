Drop table Город;
Drop table Разговор;

Create Table Город
(
Код_города int not null,
primary key(Код_города),
Название varchar(20) not null,
Тариф Money
)

insert into Город values
(48762,	'Новомомосковск',	100),
(4872,	'Тула',				120),
(48752,	'Плавск',			100),
(495,	'Москва',			130),
(4842,	'Калуга',			100);

Create Table Разговор
(
Код_разговора int not null IDENTITY(1,1),
primary key(Код_разговора),
Код_города int not null,
Разговоров int
)

insert into Разговор(Код_города, Разговоров) values
(48762,	1231),
(4872,	549),
(48752,	0),
(495,	2131),
(4842,	0);

Delete from Город Where Код_города in(select Код_города from Разговор where Разговоров = 0);
Delete from Разговор Where Разговоров = 0;

Select* from Город;
Select* from Разговор;