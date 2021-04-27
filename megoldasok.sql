A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
CREATE DATABASE ostermelo
CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

3. feladat:
SELECT DISTINCT(telepules)
FROM partnerek
ORDER BY telepules ASC;

4. feladat:
SELECT COUNT(kiszallitasok.sorsz) AS 'alkalmak'
FROM kiszallitasok
JOIN partnerek
ON kiszallitasok.partnerid=partnerek.id
WHERE partnerek.telepules='Vác';

5. feladat:
SELECT karton 
FROM `kiszallitasok`
WHERE YEAR(datum)=2016 AND MONTH(datum)=5
ORDER BY karton DESC
LIMIT 1;

6. feladat:
SELECT telepules 
FROM `partnerek`
GROUP BY telepules
HAVING COUNT(id)>1

7. feladat:
SELECT gyumolcslevek.gynev AS 'ital',SUM(kiszallitasok.karton)*6 AS 'doboz'
FROM gyumolcslevek
JOIN kiszallitasok
ON gyumolcslevek.id=kiszallitasok.gyumleid
GROUP BY ital
ORDER BY doboz DESC
LIMIT 3;
