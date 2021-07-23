/* In	the	Person.Person	table,	how	many	people	are	associated	with	each	PersonType */
SELECT
PersonType,
COUNT(*) AS PersonCount
FROM Person.Person
GROUP BY PersonType

/*Using	only	one	query,	find	out	how	many	products	in	Production.Product	are	the	
color	“red”	and	how	many	are	“black”*/
SELECT
Color,
COUNT(*) AS ProductCount
FROM Production.Product
WHERE Color IN ('Red', 'Black')
GROUP BY Color

/*Using	Sales.SalesOrderHeader,	how	many	sales	occurred	in	each	territory	between	
July	1,	2005	and	December	31,	2006?		Order	the	results	by	the	sale	count	in	
descending	order*/

SELECT  TerritoryID,COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader
WHERE OrderDate Between '7/1/2005' AND '12/31/2006'
GROUP BY TerritoryID



SELECT *
FROM Sales.SalesOrderHeader