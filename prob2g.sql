SELECT a.row_num AS rowno,
       b.col_num AS colno,
       SUM( a.value * b.value ) AS value
  FROM a, 
       b
 WHERE a.col_num = b.row_num
 GROUP BY a.row_num,
          b.col_num;

