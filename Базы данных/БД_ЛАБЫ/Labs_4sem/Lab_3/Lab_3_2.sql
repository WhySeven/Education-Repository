drop Table Автор;
drop Table Книга;

Create Table  Автор
( 
Код_Автора int not null IDENTITY(1,1),
Фамилия varchar(50)
)

Insert into Автор ("Фамилия") values
('Алексеев'),
('Аксаков'),
('Иванов');

Create Table Книга
( 
Код_Книги int not null IDENTITY(1,1),
Название varchar(50),
Цена money,
Код_Автора int
)

Insert into Книга (Название,Цена,Код_Автора) values
('Пилот',		100,1),
('Рыбак',		100,1),
('Плотник',		100,2),
('Иллюстратор',	100,2),
('Кинолог',		100,3);


Delete from Автор where Код_автора in(select Код_Автора from Книга group by Код_Автора  having count(Код_Автора) = 1);
Delete from Книга where Код_автора in(select Код_Автора from Книга group by Код_Автора  having count(Код_Автора) = 1);

Select* from Автор;
Select* from Книга;