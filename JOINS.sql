/*Using	the	Person.Person	and	Person.Password	tables,	INNER	JOIN	the	two	tables	
using	the	BusinessEntityID	column	and	return	the	FirstName	and	LastName	
columns	from	Person.Person	and	then	PasswordHash	column	from	
Person.Password */
SELECT FirstName, LastName, PasswordHash
FROM Person.Person 
INNER JOIN Person.Password
ON Person.Person.BusinessEntityID= Person.Password.BusinessEntityID;

/*Join	the	HumanResources.Employee	and	the	
HumanResources.EmployeeDepartmentHistory	tables	together	via	an	INNER	JOIN	
using	the	BusinessEntityID	column.		Return	the	BusinessEntityID,	
NationalIDNumber	and	JobTitle	columns	from	HumanResources.Employee	and	the	
DepartmentID,	StartDate,	and	EndDate	columns	from	
HumanResources.EmployeeDepartmentHistory.		Notice	the	number	of	rows	
returned.		Why	is	the	row	count	what	it	is?*/
SELECT
E.BusinessEntityID,
E.NationalIDNumber,
E.JobTitle,
EDH.DepartmentID,
EDH.StartDate,
EDH.EndDate
FROM HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EDH
ON E.BusinessEntityID = EDH.BusinessEntityID

/*Using	the	Book,	BookAuthor	and	Author	tables,	join	them	together	so	that	you	
return	the	Title	and	ISBN	columns	from	Book	and	the	AuthorName	column	from	
Author.		(Hint:	You	must	start	with	the	BookAuthor	table	in	your	FROM	clause	even	
though	we	will	not	be	returning	any	columns	from	this	table)
SELECT
B.Title,
B.ISBN,
A.AuthorName
FROM BookAuthor BA
INNER JOIN Book B
ON B.BookID = BA.BookID
INNER JOIN Author A
ON A.AuthorID = BA.AuthorID */


