--Hangi �ehrin ne kadarl�k sat�� yapt��� bilgisi
SELECT CITY,SUM(LINETOTAL) AS TOTALSALE FROM SALEORDERS
GROUP BY CITY
ORDER BY CITY ASC

--�ehirlerin aylara g�re yapt��� toplam  sat�� miktar�
SELECT CITY,MONTH_,SUM(LINETOTAL) as TOTALSALE FROM SALEORDERS
GROUP BY MONTH_,CITY
ORDER BY CITY,MONTH_ ASC

--�ehirler en �ok hangi g�nde sat�� yapm��
SELECT CITY,DAYOFWEEK_,SUM(LINETOTAL) as TOTALSALE FROM SALEORDERS
GROUP BY DAYOFWEEK_,CITY
ORDER BY CITY,DAYOFWEEK_ ASC

--�ehirlerin g�nlere g�re yapt��� total sat�� 
--Alias kullanmay� unutma ��nk� GROUP BY ile de�il Alias ile S dedi�imiz SALEORDERS 
--tablosundan gelen CITY de�erini where ko�ulu i�ine koyarak bizim totalini 
--bulmu� oldu�umuz �ehir ile denkledik bu sayede asl�nda gruplam�� gibi olduk
--Yani bize d�nen her �ehir i�in 7 s�tun de�erini de buldu�umuz bir sat�r olu�turduk
SELECT DISTINCT(CITY),
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_ = '01.PZT' ) 
AS PAZARTES�,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND  DAYOFWEEK_ = '02.SAL') 
AS SALI,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND  DAYOFWEEK_ = '03.�AR') 
AS �AR�AMBA,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND  DAYOFWEEK_ = '04.PER') 
AS PER�EMBE,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND  DAYOFWEEK_ = '05.CUM') 
AS CUMA,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND  DAYOFWEEK_ = '06.CMT') 
AS CUMARTES�,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND  DAYOFWEEK_ = '07.PAZ') 
AS PAZAR
FROM SALEORDERS S
ORDER BY S.CITY 



select * from SALEORDERS

SELECT * FROM SALEORDERS