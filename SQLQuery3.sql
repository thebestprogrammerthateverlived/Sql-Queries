	use ADventureWorks
 
 select * from Sales.Customer
  --Exercise 1 ans

 select CreditCardID, CardType, CardNumber, ExpYear from Sales.CreditCard
  --Exercise 2 ans

 select AccountNumber from Sales.Customer
 where TerritoryID = 4 ;
 --Exercise 3 ans 

 select UnitPrice from Sales.SalesOrderDetail
 where UnitPrice > 2000
 --Exercise 4 ans 

 select * from Sales.SalesOrderDetail
 where ProductID = 843
 --Excercise 5 ans 

 select * from Sales.SalesOrderHeader
 where OrderDate = '2004-06-06'
 --Exercise 6 ans

 select SalesOrderId,OrderQty,UnitPrice,LineTotal from Sales.SalesOrderDetail
 --Exercise 7 ans 

 select LineTotal from Sales.SalesOrderDetail
 where LineTotal Between 2000 and 2100;
 --Exercise 8 ans 

 --display name 
 select Name,countryregioncode,SalesLastYear from Sales.SalesTerritory
 where TerritoryID = 1
 --Exercise 9 ans 

 select * from Sales.SalesOrderHeader
 where TaxAmt > 10000
 --Exercise 10 ans 

 select * from Sales.SalesTerritory
 where Name = 'Canada' or Name = 'France' or Name = 'Germany'
  --Exercise 11 ans 

 select * from Sales.SalesOrderHeader
 where TerritoryID = 2 or TerritoryID = 4
 --Exercise 12 ans 

 select * from Sales.CreditCard
 where CardType = 'Vista'
 and ExpYear = 2006
 --Exercise 13 ans 

 select * from Sales.SalesOrderHeader
 where ShipDate > '2004-07-12' 
 --Exercise 14 ans 

select * from Sales.SalesOrderHeader
where OrderDate = '2001-07-01'
and SubTotal > 10000
 --Exercise 15 ans 
 
 select * from Sales.SalesReason

select SalesOrderID,TotalDue from sales.salesorderheader
order by TotalDue desc
 --Exercise 17 ans 

select SalesOrderID, TaxAmt from sales.salesorderheader
where SubTotal < 2000
order by TaxAmt desc
 --Exercise 18 ans 

 select SalesOrderNumber,TotalDue from Sales.SalesOrderHeader
 order by TotalDue 
--Exercise 19 ans 

select * from Sales.Currency
where Name like '%Dollar%'
--Exercise 20 ans

select * from sales.salesterritory
where Name like 'N%'
--Exercise 21 ans

select TerritoryID,qh.SalesPersonID,SalesQuota from Sales.SalesPersonQuotaHistory as qh
inner join Sales.SalesOrderHeader as head
on qh.SalesPersonID = head.SalesPersonID
--Exercise 22 ans

select distinct top 3 SalesPersonID,Bonus from sales.SalesPerson
--Exercise 23 ans

select Name from Sales.Store
where Name like '%Bike%'
--Exercise 24 ans

select distinct CardType from Sales.CreditCard
--Exercise 25 ans

select EmployeeID,LoginID,Title from HumanResources.Employee
order by EmployeeID asc
offset 5 rows fetch next 10 Rows only
--Exercise 26 ans

select MAX(OrderQty) as Maximum,AVG(OrderQty) as Average,MIN(OrderQty) as Minimum from sales.SalesOrderDetail
--Exercise 27 ans

select SUM(OrderQty) as TotalValue from Sales.SalesOrderDetail
--Exercise 28 ans

select TOP 5 SalesOrderID from Sales.SalesOrderDetail
Where ModifiedDate Between '2001-01-01' and '2001-12-31'
--Exercise 29 ans

SELECT SalesOrderID, ProductID, SUM(LineTotal) AS TotalOrderValue FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID, ProductID;
--Exercise 30 ans

SELECT ProductID, SUM(LineTotal) AS TotalCost FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 10000;
--Exercise 31 ans

SELECT ProductID, SUM(LineTotal) AS Total FROM Sales.SalesOrderDetail
GROUP BY ROLLUP(ProductID);
--Exercise 32 ans

SELECT OrderDate, SUM(TotalDue) AS TotalCollected FROM Sales.SalesOrderHeader
GROUP BY OrderDate
ORDER BY OrderDate;
--Exercise 33 ans

SELECT ProductID, SUM(UnitPrice) AS TotalUnitPrice, SUM(LineTotal) AS TotalCollected
FROM Sales.SalesOrderDetail
WHERE ProductID IN (774, 777)
GROUP BY ProductID;

SELECT SUM(LineTotal) AS TotalAmountBetweenProducts
FROM Sales.SalesOrderDetail
WHERE ProductID IN (774, 777);
--Exercise 34 ans

