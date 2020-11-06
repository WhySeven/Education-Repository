Drop Database basa1;

Create database basa1
on
(
Name = basa1_1,
FileName = 'D:\basa1_1.mdf',
Size = 100,
MaxSize = 500,
FileGrowth=10%
),
(
Name = basa1_2,
FileName = 'D:\basa1_2.mdf',
Size = 100,
MaxSize = 500,
FileGrowth=10%
)
log on
(
Name = basa1_log,
FileName = 'E:\Basa1_log.ldf',
Size = 50,
MaxSize = 100,
FileGrowth = 10%
)