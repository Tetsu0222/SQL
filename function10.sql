//ファンクションのネスト
SELECT SUBSTR( email , INSTR( email , '@' ) + 1 ) AS domain
FROM emp2;

