use Toyota;

SELECT TOP 10
    Date,
    [Close],
    Volume
FROM dbo.Toyota_Stock_Prices_1980_2026
order by Volume DESC;


SELECT
    YEAR(Date) AS Yil,
    CAST(AVG([Close]) AS DECIMAL(18,2)) AS OrtalamaFiyat,
    SUM(Volume) AS ToplamHacim
FROM dbo.Toyota_Stock_Prices_1980_2026
group by YEAR(Date)
order by Yil DESC;


SELECT 
    MONTH(Date) AS Ay, 
    CAST(AVG([Close]) AS DECIMAL(18,2)) AS OrtalamaFiyat, 
    SUM(Volume) AS ToplamHacim
FROM dbo.Toyota_Stock_Prices_1980_2026 
WHERE YEAR(Date) = 2024
group by MONTH(Date)
order by Ay ASC;


WITH AylikOrtalamalar AS (
    SELECT 
        YEAR(Date) AS Yil, 
        MONTH(Date) AS Ay, 
        CAST(AVG([Close]) AS DECIMAL(18,2)) AS OrtalamaFiyat
    FROM dbo.Toyota_Stock_Prices_1980_2026
    group by YEAR(Date), MONTH(Date)
)
SELECT 
    Yil, 
    Ay, 
    OrtalamaFiyat,
    LAG(OrtalamaFiyat) OVER (order by Yil, Ay) AS OncekiAyFiyat,
    CAST(((OrtalamaFiyat - LAG(OrtalamaFiyat) OVER (order by Yil, Ay)) / LAG(OrtalamaFiyat) OVER (order by Yil, Ay)) * 100 AS DECIMAL(18,2)) AS DegisimYuzdesi
FROM AylikOrtalamalar
order by Yil DESC, Ay DESC;


SELECT 
    Date, 
    [Close] AS GunlukKapanis,
    CAST(AVG([Close]) OVER (order by Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS DECIMAL(18,2)) AS HareketliOrtalama_30Gun
FROM dbo.Toyota_Stock_Prices_1980_2026
order by Date DESC;


SELECT * FROM dbo.Toyota_Stock_Prices_1980_2026;