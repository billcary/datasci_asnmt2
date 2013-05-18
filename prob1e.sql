SELECT count( docid )
  FROM ( 
    SELECT f.docid,
           sum( count )
      FROM frequency f
     GROUP BY f.docid
    HAVING sum( count ) > 300 
);

