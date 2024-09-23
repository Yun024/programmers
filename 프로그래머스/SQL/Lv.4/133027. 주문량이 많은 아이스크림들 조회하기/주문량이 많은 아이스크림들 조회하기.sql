
WITH TMP AS(
SELECT FLAVOR, SUM(TOTAL_ORDER)
FROM ( SELECT * FROM FIRST_HALF UNION ALL SELECT * FROM JULY)
            GROUP BY FLAVOR
            ORDER BY 2 DESC)
    SELECT FLAVOR FROM TMP WHERE 1=1 AND ROWNUM<4;
    
    