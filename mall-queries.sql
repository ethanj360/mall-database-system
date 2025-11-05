/**Question 1 List the total sales for each dealer over a month’s time frame**/

SELECT DEALER.DealerID, COUNT(TransactionID) AS 'Total Sales for March'

FROM SALES, DEALER

WHERE DEALER.DealerID =SALES.DealerID
AND SALES.DateSold LIKE '2022-03-%'

GROUP BY DEALER.DealerID

ORDER BY [Total Sales for March] DESC;


/**Number 2 List the amount due from NHD to each dealer after all deductions are considered in a particular month**//
SELECT DEALER.DealerID, ((SUM(Price) -SUM(Price)*Commission - RentAmount)) AS 'Dealer Amount Due for March'

FROM SALES, DEALER, PRODUCT, LEASES

WHERE LEASES.DealerID=SALES.DealerID
AND DEALER.DealerID=SALES.DealerID
AND SALES.ProductID=PRODUCT.ProductID
AND SALES.DateSold LIKE '2022-03-%'

GROUP BY DEALER.DealerID, RentAmount, Commission

ORDER BY [Dealer Amount Due for March] ASC;

/**Question 3 List the dealers and their corresponding booth(s) lease details**/
SELECT DEALER.DealerID, FName, LName, LEASES.BoothID, RentAmount, Commission, Location, Color, Rafter, Carpeting

FROM DEALER, BOOTH, LEASES

WHERE DEALER.DealerID = LEASES.DealerID
AND LEASES.BoothID = BOOTH.BoothID;



/**Question 4 List the revenues for NHD in a particular month**/
SELECT DEALER.DealerID, ((SUM(Price)*Commission + RentAmount)) AS 'NHD Revenue for January'

FROM SALES, DEALER, PRODUCT, LEASES

WHERE LEASES.DealerID=SALES.DealerID
AND DEALER.DealerID=SALES.DealerID
AND SALES.ProductID=PRODUCT.ProductID
AND SALES.DateSold LIKE '2022-01-%'

GROUP BY DEALER.DealerID, RentAmount, Commission

ORDER BY [NHD Revenue for January] ASC;


/**Question 5 List the booths that have not been leased**/
SELECT BoothID

FROM BOOTH

WHERE Availability = 'Vacant';
