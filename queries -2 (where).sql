-- select all rows
SELECT *FROM rgm WHERE session="SQL";

-- selecting certain columns of rows
SELECT ID,name,session FROM rgm WHERE session="SQL";

SELECT *FROM rgm WHERE session="SQL" AND Address="KNL";

SELECT *FROM rgm WHERE  Address="KNL";

SELECT *FROM rgm WHERE name LIKE "Ra%";

-- names ending with r
SELECT *FROM rgm WHERE name LIKE "%R";
-- selecting the middle letters
SELECT *FROM rgm WHERE name LIKE "__m%";

SELECT *FROM rgm WHERE name NOT LIKE "R%";

SELECT *FROM rgm WHERE Address IN ("ATP","Chittor");
SELECT *FROM rgm WHERE Address="ATP" OR Address="Chittor";
SELECT *FROM rgm WHERE college IN ("RGM","SKU");

SELECT *FROM rgm WHERE college="santhiram" OR college="JNTU";
