
-- Ejercicio # 1
SELECT count(*) 
FROM Flights;

-- Ejercicio # 2 
SELECT AVG(ArrDelay) 
AS PROM 
FROM Flights;

SELECT AVG(DepDelay) 
AS PROM
 FROM Flights;


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
 GROUP BY 1
 ORDER BY a DESC; 

-- Ejercicio #6 
SELECT Distance 
FROM Flights 
ORDER BY  Distance DESC
LIMIT 10;

-- Ejercicio # 7

SELECT  Origin, AVG(DepDelay)
FROM Flights
GROUP BY Origin
HAVING AVG(DepDelay) >= 10
ORDER BY AVG(DepDelay) DESC;







