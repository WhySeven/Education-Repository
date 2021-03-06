Drop Table Город;
Drop Table Разговор;

Create Table Город
(
Код_города int not null,
primary key(Код_города),
Название varchar(20) not null,
Тариф Money
)

Create Table Разговор
(
Код_разговора int not null IDENTITY(1,1),
primary key(Код_разговора),
Код_города int not null,
Фамилия varchar(20),
Дата datetime,
Продолжительность int
)

insert into Город values
(48762,	'Новомомосковск',	100),
(4872,	'Тула',				120),
(48752,	'Плавск',			100),
(495,	'Москва',			130),
(4842,	'Калуга',			100);

insert into
Разговор ("Код_города","Фамилия","Дата","Продолжительность")
values
(495,	'Зудин',	'01.11.2020 22:00', 33),
(4872,	'Холодняк',	'01.11.2020 23:00',	13),
(4842,	'Жуков',	'02.12.2020 00:00',	4),
(495,	'Кузнецов',	'02.12.2020 01:00', 5),
(48762,	'Иванов',	'02.12.2020 02:00', 17);
select SCOPE_IDENTITY();

delete from Разговор where Продолжительность<10;

select* from Разговор;
select* from Город;

