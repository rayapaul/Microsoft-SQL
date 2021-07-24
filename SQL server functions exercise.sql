SELECT LEFT(LastName, 5), LastName
FROM Person.Person

SELECT RIGHT(LastName, 5)
From Person.Person

SELECT 'Raya' ,SUBSTRING('Raya',1,3)

SELECT TOP 100 FirstName, SUBSTRING(FirstName,3,5)
From Person.Person

/*Return the first eight characters of the string �This is a basic string�*/
SELECT LEFT('THIS IS A BASIC STRING', 8)
/*Return the last six characters of the string �This is another string�*/
SELECT RIGHT('This is another string',6)
/*Find the index (integer location) of the first instance of the letter �e� in each product name from 
the Production.Product table.*/
SELECT CHARINDEX('E', name)
FROM Production.Product;
/*Find the substring of the territory name from Sales.SalesTerritory starting at the third character 
and lasting four characters in length.*/
SELECT SUBSTRING(name,3,4)
FROM Sales.SalesTerritory;

/*Starting with the string �This is a slightly longer string�, find the last eight characters and then, 
from that result, find the first four characters. In other words, find the first four characters of 
the last eight characters from the string �This is a slightly longer string�. (Hint: use a nested 
function for this query)*/
SELECT LEFT(RIGHT('This is a slightly longer string', 8),4)
FirstName from Person.Person. Only return those results where the resulting string is not blank. 
(Hint: this will be challenging. Use a nested function in the SELECT statement and then that 
same nested function in the WHERE clause)*/