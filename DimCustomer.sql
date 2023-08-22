select CustomerKey,GeographyKey,
CONCAT(FirstName,' ', LastName) as CustomerName,
BirthDate,
	CASE
	WHEN MaritalStatus = 'M' THEN 'Married'
	WHEN MaritalStatus = 'S' THEN 'Single'
	END AS MaritalStatus,
	CASE
	WHEN Gender = 'M' THEN 'Male'
	WHEN Gender = 'F' THEN 'Female'
	END AS Gender

from DimCustomer