--AND
--a.docid < b.docid
SELECT a.docid AS rowval,
       b.docid AS colval,
       SUM( a.count * b.count ) AS similarity
  FROM frequency a, 
       frequency b
 WHERE a.term = b.term
 AND a.docid = '10080_txt_crude'
 AND b.docid = '17035_txt_earn'
 GROUP BY a.docid,
          b.docid;

