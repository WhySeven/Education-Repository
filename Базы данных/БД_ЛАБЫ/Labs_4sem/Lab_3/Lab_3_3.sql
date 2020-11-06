Drop Table Air_Price;

Create Table Air_Price
(
Код_Рейса int not null IDENTITY(1,1),
Цена money,
Дата_покупки Date,
Дата_вылета Date
)
insert into Air_Price (Цена,Дата_Покупки,Дата_вылета) values
(5000,'01.11.2020','01.11.2020'),
(5500,'02.11.2020','01.11.2020'),
(6000,'03.11.2020','01.11.2020'),
(6500,'04.11.2020','01.11.2020'),
(7000,'05.11.2020','05.11.2020');


update Air_Price set Цена = Цена*1.1 where Дата_покупки = Дата_вылета;
Select* from Air_Price;