SELECT TOP 100 FirstName, LastName,COALESCE(MiddleName,' ') AS MiddleName
FROM Person.Person;

SELECT  BillToAddressID,ShipToAddressID,
	NULLIF(BillToAddressID,ShipToAddressID)
FROM Sales.SalesOrderHeader

/*If the Title column of Person.Person is NULL then return the string “No Title Listed”.*/
SELECT COALESCE(Title, 'No title listed')AS Title 
FROM Person.Person

/* If the MiddleName column of Person.Person is NULL then return the string “No Middle Name 
Listed”.*/
SELECT COALESCE(MiddleName, 'No middle name listed')AS MiddleName
FROM Person.Person

/*If the MiddleName column is NULL then return the FirstName and LastName concatenated. If 
the MiddleName is non-NULL then return the FirstName, MiddleName and LastName 
concatenated.*/
SELECT
COALESCE(FirstName + ' ' + MiddleName + ' ' + LastName,
FirstName + ' ' + LastName) AS FullName
FROM Person.Person/*Using the Production.Product table, if the MakeFlag and FinishedGoodsFlag columns are equal 
then return a NULL value*/
SELECT MakeFlag, FinishedGoodsFlag,
	NULLIF(MakeFlag, FinishedGoodsFlag)
From Production.Product