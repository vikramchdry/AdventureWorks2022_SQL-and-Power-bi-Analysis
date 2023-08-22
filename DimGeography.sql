select GeographyKey,City,
EnglishCountryRegionName as CountryName,
s.SalesTerritoryKey,
s.SalesTerritoryRegion,
s.SalesTerritoryGroup,
g.PostalCode
from DimGeography g
INNER JOIN DimSalesTerritory s
ON g.SalesTerritoryKey = s.SalesTerritoryKey