/*Return	the	BusinessEntityID	and	SalesYTD	column	from	Sales.SalesPerson.		Join	this	
table	to	the	Sales.SalesTerritory	table	in	such	a	way	that	every	in	Sales.SalesPerson	
will	be	returned	regardless	of	whether	or	not	they	are	assigned	to	a	territory.		Also,	
return	the	Name	column	from	Sales.SalesTerritory.		Give	this	column	the	column	
alias	“Territory	Name”.

SELECT SP.BusinessEntityID, SP.SalesYTD, ST.Name AS[Territory Name]
From Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID= SP.TerritoryID;*/

/*Join	the	HumanResources.Employee	and	the	
HumanResources.EmployeeDepartmentHistory	tables	together	via	an	INNER	JOIN	
using	the	BusinessEntityID	column.		Return	the	BusinessEntityID,	
NationalIDNumber	and	JobTitle	columns	from	HumanResources.Employee	and	the	
DepartmentID,	StartDate,	and	EndDate	columns	from	
HumanResources.EmployeeDepartmentHistory.		Notice	the	number	of	rows	
returned.		Why	is	the	row	count	what	it	is?*/

SELECT E.BusinessEntityID, E.NationalIDNumber, E.JobTitle,EDH.DepartmentID, EDH.StartDate, EDH.EndDate
FROM HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EDH
On E.BusinessEntityID=EDH.BusinessEntityID;

SELECT
E.BusinessEntityID,
E.NationalIDNumber,
E.JobTitle,
EDH.DepartmentID,
EDH.StartDate,
EDH.EndDate
FROM HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EDH
ON E.BusinessEntityID = EDH.BusinessEntityID;

