
/* Find	the	total	sales	by	territory	for	all	rows	in	the	Sales.SalesOrderHeader	table.		
Return	only	those	territories	that	have	exceeded	$10	million	in	historical	sales.		
Return	the	total	sales	and	the	TerritoryID	column.*/
SELECT
TerritoryID,
SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
HAVING SUM(TotalDue) > 10000000

/*Using	the	query	from	the	previous	question,	join	to	the	Sales.SalesTerritory	table	
and	replace	the	TerritoryID	column	with	the	territory’s	name.*/
SELECT
ST.Name AS TerritoryName,
SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
GROUP BY ST.Name
HAVING SUM(TotalDue) > 10000000

/*Using	the	Production.Product	table,	find	how	many	products	are	associated	with	
each	color.		Ignore	all	rows	where	the	color	has	a	NULL	value.		Once	grouped,	return	
to	the	results	only	those	colors	that	had	at	least	20	products	with	that color.*/

SELECT
Color,
COUNT(*) AS ProductCount
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING COUNT(*) >= 20