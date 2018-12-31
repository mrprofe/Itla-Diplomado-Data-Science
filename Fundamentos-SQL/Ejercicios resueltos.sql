--PUNTO 1: Crear un producto nuevo, ingresando su categoría y suplidor

--insertar registro en la tabla de categoria
insert into [dbo].[Categories] values ('Pizzas','Pizza Fina','no image')
select * from [dbo].[Categories]

--insertar registro en la tabla de suplidor
insert into dbo.[Suppliers] values ('Pizza hut','Jose Enrique','Gerente General','La caleta','Santo Domingo','Sto Dgo Este','','Rep. Dom','809-457-4269','','')
select * from [Suppliers]

--insertar registro en la tabla de producto
insert into  [dbo].[Products] values ('Pizza light',38,9,'Mediana',80,4,2,15,0)
select * from [Products]

--PUNTO 2: Identificar todos los suplidores que tienen la región en blanco y rellenar con el valor “N/A”

select * from [dbo].[Suppliers] where Region is null
update [dbo].[Suppliers] set Region='N/A' where Region is null


--PUNTO 3: Eliminar de la tabla de detalle de ordenes todos aquellos productos con valor 1

select * from [dbo].[Order Details] where ProductID=1
delete from [dbo].[Order Details] where ProductID=1

--PUNTO 4: Listar todos los registros de la tabla de territorios
Select * from [dbo].[Territories]