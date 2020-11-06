Drop Table Telephone;

Create Table Telephone
(
id int not null IDENTITY(1,1),
Продолжительность float,
Колличество_звонков int
)

Insert into Telephone (Продолжительность,Колличество_звонков) values
(11,1001),
(10,1000),
(9,999);

update Telephone set Продолжительность = Продолжительность/2 where Колличество_звонков>1000;

Select* from Telephone;