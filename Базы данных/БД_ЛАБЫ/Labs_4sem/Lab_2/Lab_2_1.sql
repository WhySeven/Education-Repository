Drop Database basa1;

Create database basa1
on
(
Name = basa1,
FileName = 'D:\basa1.mdf',
FileGrowth=10%
)
log on
(
Name = basa1_log,
FileName = 'E:\Basa1_log.ldf',
Size = 50,
MaxSize = 100,
FileGrowth = 10
)