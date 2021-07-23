SELECT * 
FROM Production.Product
WHERE ListPrice>=10

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName!='Chris';

SELECT * 
FROM HumanResources.Employee
WHERE BirthDate >= '1-1-1980';

SELECT *
FROM HumanResources.Employee

SELECT *
FROM Production.Product
WHERE(ListPrice>100 AND Color='RED')Or StandardCost >30;

/*first letter starting with D then second letter can be 'a' or 'o' followed by n */
SELECT *
From HumanResources.vEmployee
WHERE FirstName LIKE 'D[a, o]n'


/*first letter starting with D then second letter can be not an 'a' followed by n*/
SELECT *
From HumanResources.vEmployee
WHERE FirstName LIKE 'D[^a]n';



