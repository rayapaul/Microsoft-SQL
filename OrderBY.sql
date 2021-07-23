/*From	the	HumanResources.vEmployeeDepartment	view,	return	the	FirstName,	
LastName	and	JobTitle	columns.		Sort	the	results	by	the	FirstName	column	in	
ascending	order*/

SELECT FirstName, LastName, JobTitle
FROM HumanResources.vEmployeeDepartment
ORDER BY FirstName 

/*Modify	the	query	from	question	1	to	sort	the	results	by	the	FirstName	column	in	
ascending	order	and	then	by	the	LastName	column	in	descending	order*/
SELECT FirstName, LastName, JobTitle
FROM HumanResources.vEmployeeDepartment
ORDER BY FirstName ASC, LastName DESC

/* From	the	Sales.vIndividualCustomer	view,	return	the	FirstName,	LastName	and	
CountryRegionName	columns.		Sort	the	results	by	the	CountryRegionName	column.		
Use	the	column	ordinal	in	the	ORDER	BY	clause.*/
SELECT FirstName, LastName, CountryRegionName
FROM Sales.vIndividualCustomer
ORDER BY 3;

/*From	the	Sales.vIndividualCustomer	view,	return	the	FirstName,	LastName	and	
CountryRegionName	columns	for	those	rows	with a	CountryRegionName	that	is	
either	“United	States”	or	“France”.		Sort	the	results	by	the	CountryRegionName	
column	in	ascending	order*/
SELECT FirstName, LastName, CountryRegionName
FROM Sales.vIndividualCustomer
Where CountryRegionName In('United States' , 'France')
ORDER BY CountryRegionName ;


/*From	the	Sales.vStoreWithDemographics	view,	return	the	Name,	AnnualSales,	
YearOpened,	SquareFeet,	and	NumberEmployees	columns.		Give	the	SquareFeet	
column	the	alias	“Store	Size”	and	the	NumberEmployees	column	the	alias	“Total	
Employees”.		Return	only	those	rows	with	AnnualSales	greater	than	1,000,000	and	
with	NumberEmployees	greater	than	or	equal	to	45.		Order	your	results by	the	
“Store	Size”	alias	in	descending	order	and	then	by	the	“Total	Employees”	alias	in	
descending	order*/
SELECT Name, AnnualSales, YearOpened, SquareFeet AS['Store Size'], NumberEmployees AS['Total Employees']
FROM Sales.vStoreWithDemographics
WHERE AnnualSales >1000000 AND NumberEmployees >= 45
ORDER BY ['Store Size'] DESC, ['Total Employees'] ASC
