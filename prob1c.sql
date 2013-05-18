SELECT count(term)
FROM
    (SELECT term
    FROM frequency f
    WHERE docid = '10398_txt_earn' AND count = 1
    UNION
    SELECT term
    FROM frequency f
    WHERE docid = '925_txt_trade' AND count = 1)
