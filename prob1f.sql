SELECT count( docid )
  FROM ( 
    SELECT DISTINCT f.docid
      FROM frequency f
    WHERE f.term = 'transactions'
    INTERSECT
    SELECT DISTINCT f.docid
      FROM frequency f
    WHERE f.term = 'world'
);

