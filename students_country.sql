SET 
    @row_am:=0,
    @row_as:=0,
    @row_eu:=0;

SELECT ifnull(min(american), '') AS America,
       ifnull(min(asian), '') AS Asia,
       ifnull(min(european), '') AS Europe
FROM
  (SELECT CASE
              WHEN continent = 'America' THEN @row_am:=@row_am+1
              WHEN continent = 'Asia' THEN @row_as:=@row_as+1
              ELSE @row_eu:=@row_eu+1
          END AS row_num,
          CASE
              WHEN continent = 'America' THEN name
          END AS american,
          CASE
              WHEN continent = 'Asia' THEN name
          END AS asian,
          CASE
              WHEN continent = 'Europe' THEN name
          END AS european
   FROM student
   ORDER BY name) AS TEMP
GROUP BY row_num;