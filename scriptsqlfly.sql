
-- Ejercicio # 1
SELECT count(*)
FROM Flights;

-- Ejercicio # 2
SELECT Origin, AVG(DepDelay),AVG(ArrDelay)
AS PROM
FROM Flights
GROUP BY Origin;

-- Ejercicio#3
SELECT 	Origin, colYear, colMonth, avg(ArrDelay) AS Retard
FROM Flights
GROUP BY 1,2,3
ORDER BY 1 ASC;

-- Ejercicio #4
SELECT Airport, ColYear, colMonth, AVG(ArrDelay)
FROM Flights
LEFT JOIN USAirports
ON origin = IATA
GROUP BY 1,2,3
ORDER BY 1 ASC;

-- Ejercicio # 5
SELECT UniqueCarrier, SUM(Cancelled) AS a
 FROM Flights
 WHERE Cancelled = 1
 GROUP BY 1
 ORDER BY a DESC;

-- Ejercicio #6
SELECT TailNum, SUM(Distance)
FROM Flights
WHERE TailNum = 'NA'
GROUP BY 1
ORDER BY  SUM(Distance) DESC
LIMIT 10;

-- Ejercicio # 7
SELECT  Origin, AVG(DepDelay)
FROM Flights
GROUP BY Origin
HAVING AVG(DepDelay) >= 10
ORDER BY AVG(DepDelay) DESC;
