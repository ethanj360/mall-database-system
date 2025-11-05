/**Question 1 Which dealer made the most sales during March 2022, and how many sales did each dealer make**/

SELECT DEALER.DealerID, COUNT(TransactionID) AS 'Total Sales for March'

FROM SALES, DEALER

WHERE DEALER.DealerID =SALES.DealerID
AND SALES.DateSold LIKE '2022-03-%'

GROUP BY DEALER.DealerID

ORDER BY [Total Sales for March] DESC;


/**Number 2 How much money does each dealer owe the mall for March after accounting for commission and rent**//
SELECT DEALER.DealerID, ((SUM(Price) -SUM(Price)*Commission - RentAmount)) AS 'Dealer Amount Due for March'

FROM SALES, DEALER, PRODUCT, LEASES

WHERE LEASES.DealerID=SALES.DealerID
AND DEALER.DealerID=SALES.DealerID
AND SALES.ProductID=PRODUCT.ProductID
AND SALES.DateSold LIKE '2022-03-%'

GROUP BY DEALER.DealerID, RentAmount, Commission

ORDER BY [Dealer Amount Due for March] ASC;

/**Question 3 Which booth is each dealer renting, and what are the booth details and lease terms?**/
SELECT DEALER.DealerID, FName, LName, LEASES.BoothID, RentAmount, Commission, Location, Color, Rafter, Carpeting

FROM DEALER, BOOTH, LEASES

WHERE DEALER.DealerID = LEASES.DealerID
AND LEASES.BoothID = BOOTH.BoothID;



/**Question 4 How much revenue did the mall earn from each dealer in January, including commission and rent**/
SELECT DEALER.DealerID, ((SUM(Price)*Commission + RentAmount)) AS 'NHD Revenue for January'

FROM SALES, DEALER, PRODUCT, LEASES

WHERE LEASES.DealerID=SALES.DealerID
AND DEALER.DealerID=SALES.DealerID
AND SALES.ProductID=PRODUCT.ProductID
AND SALES.DateSold LIKE '2022-01-%'

GROUP BY DEALER.DealerID, RentAmount, Commission

ORDER BY [NHD Revenue for January] ASC;


/**Question 5 Which booths are currently available for rent**/
SELECT BoothID

FROM BOOTH

WHERE Availability = 'Vacant';
