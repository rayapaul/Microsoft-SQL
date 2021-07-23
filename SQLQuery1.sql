SELECT TOP 5 FirstName AS [CUSTOMER FIRST NAME], MiddleName, LastName
/* top operator will only return mentioned no of rows */
FROM Person.Person;
SELECT TOP 10 PERCENT FirstName, MiddleName, LastName
/* top operator will only return mentioned no of rows */
FROM Person.Person;

SELECT TOP 5 PERCENT *
FROM Person.Person;