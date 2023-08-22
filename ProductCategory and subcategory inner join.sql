select 
p.ProductKey,p.ProductSubcategoryKey,
EnglishProductName as 'ProductName',
Category,
Subcategory,
StandardCost,
Color,
ModelName,
CASE
    WHEN Status IS NULL THEN 'Outdate' 
	WHEN Status = 'Current' THEN 'Current'
END AS 'Status'

from DimProduct p
INNER JOIN (SELECT C.ProductCategoryKey, 
                   ProductSubcategoryKey, 
				   EnglishProductCategoryName AS [Category], 
                   EnglishProductSubcategoryName AS [Subcategory]
FROM DimProductCategory C
INNER JOIN DimProductSubcategory S
ON C.ProductCategoryKey = S.ProductCategoryKey) C
ON p.ProductSubcategoryKey = c.ProductSubcategoryKey