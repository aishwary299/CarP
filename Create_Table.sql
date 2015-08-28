CREATE TABLE LOGIN
(Id int Identity(1,1),
 EmpId varchar(30),
 EmpName varchar(50),
 [Password] varchar(30),
 [Status] bit
 )

 CREATE TABLE CARREGDETAILS
 (
 Id int Identity(1,1),
 EmpId varchar(30), 
 Email varchar(30),
 [From] varchar(30),
 [To] varchar(30),
 Via varchar(30),
 InTime varchar(30),
 OutTime varchar(30),
 [Status] bit 
 )
 CREATE TABLE POOLINGREQUEST
 (
 Id int Identity(1,1), 
 ReqEmpId varchar(30),
 OwnerEmpId varchar(30),
 Seats int,
 [Status] int
 )