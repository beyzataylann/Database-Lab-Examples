CREATE DATABASE sirket ON PRIMARY
(
    NAME = 'sirket_data',
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SERVER\MSSQL\DATA\sirket.mdf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = 'sirket_log',
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SERVER\MSSQL\DATA\sirket.ldf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
