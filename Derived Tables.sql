
SELECT CustomerID
FROM (
SELECT CustomerID,TotalDue
FROM Sales.SalesOrderHeader)AS X
/* Using a derived table, find the total sales revenue generated for the year 2005 and 2006. The 
WHERE and GROUP BY clause of your SELECT statement should have no functions*/


SELECT OrderYear, SUM(TotalDue) AS TotalSales
FROM (
SELECT *, YEAR(OrderDate) AS OrderYear
from Sales.SalesOrderHeader )AS SalesOrders
WHERE OrderYear IN(2005,2006)
GROUP BY  OrderYear