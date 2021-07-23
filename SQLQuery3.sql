SELECT TOP 5 * 
FROM HumanResources.vEmployee;

/*Retrieve	all	rows	from	the	HumanResources.Employee	table.		Return	only	the	
NationalIDNumbeer Colum */
SELECT NationalIDNumber
FROM HumanResources.Employee;

/*Retrieve	all	rows	from	the	HumanResources.Employee	table.		Return	the	
NationalIDNumber	and	JobTitle	columns. */
SELECT NationalIDNumber , JobTitle
FROM HumanResources.Employee

/*Retrieve	the	top	20	percent	of	rows	from	the	HumanResources.Employee	table.		
Return	the	NationalIDNumber,	JobTitle	and	BirthDate	columns. */
SELECT TOP 20 PERCENT NationalIDNumber , JobTitle, BirthDate
FROM HumanResources.Employee

/*Retrieve	the	top	500	rows	from	the	HumanResources.Employee	table.		Return	the	
NationalIDNumber,	JobTitle	and	BirthDate	columns.		Give	the	NationalIDNumber	
column	an	alias,	“SSN”,	and	the	JobTitle	column	an	alias,	“Job	Title */
SELECT TOP 500 NationalIDNumber AS [SSN], JobTitle AS [Job Title], BirthDate
From HumanResources.Employee
/*Return	all	rows	and	all	columns	from	the	Sales.SalesOrderHeader	table. */
SELECT *
FROM Sales.SalesOrderHeader

/* Return	the	top	50	percent	of	rows	and	all	columns	from	the	Sales.Customer	table*/
SELECT TOP 50 PERCENT *
FROM Sales.Customer
/*Return	the	Name	column	from the Production.vProductAndDescription view.		Give	
this	column	an	alias	“Product’s	Name”.*/
SELECT Name AS [Product's Name]
From Production.vProductAndDescription

/*Return	the	top	400	rows	from	HumanResources.Department*/
SELECT TOP 400 *
FROM HumanResources.Department

/*Return	all	rows	and	columns	from	the	table	named	Production.BillOfMaterials */
SELECT *
FROM Production.BillOfMaterials;

/*Return	the	top	1500 rows	and	columns	from	the	view	named	
Sales.vPersonDemographics*/
SELECT TOP 1500 *
FROM Sales.vPersonDemographics
