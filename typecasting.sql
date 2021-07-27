/*Write the SQL SELECT statement that returns the FirstName column of Person.Person casted as 
the VARCHAR data type.*/
SELECT CAST(FirstName AS VARCHAR)
from Person.Person

/*Write three expressions in a single SELECT statement: one that returns the results of 11 divided 
by 4. The second column should return the result of 11 casted as float divided by 4 casted as 
float. The final column should divide 11.0 by 4.0 (including the decimal point and trailing zero).
Why?*/
CAST(FirstName AS VARCHAR(3))
FROM Person.Person