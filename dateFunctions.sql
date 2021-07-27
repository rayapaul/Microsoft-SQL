SELECT GETDATE()
SELECT SYSDATETIME()
SELECT DATEDIFF(MM, '2/2/2019', '2/6/2021')
/*What is the month datepart for June 12, 2011?*/
SELECT DATEPART(MONTH, '6/12/2011')
SELECT MONTH('6/12/2011')
/*What is the year datepart for November 20, 1992?*/
SELECT YEAR('11/20/1992')
/*What day was it seventy-four days ago?*/
SELECT DATEADD(DAY, -74, GETDATE())
/*What is the current date? Complete this problem using at least two different date functions.*/
SELECT GETDATE()
/*How many days are between April 17, 1996 and September 4, 2001?*/
SELECT DATEDIFF(DAY,'1997-12-31 23:59:59','1997-12-30')