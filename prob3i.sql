SELECT a.docid AS rowval,
       b.docid AS colval,
       SUM( a.count * b.count ) AS similarity
  FROM qview a, 
       qview b
 WHERE a.term = b.term 
       AND
       a.docid = 'q'
 GROUP BY a.docid,
          b.docid
 ORDER BY SUM( a.count * b.count ) DESC;

