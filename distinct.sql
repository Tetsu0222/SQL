//DISTINCTによる重複データの除外
//SELECT文の直後にDISTINCTを指定すると、重複しているデータを一意にして表示可能

//例文
SELECT DISTINCT job
FROM emp;

//複数の値の重複を除外
SELECT DISTINCT job , deptno
FROM emp;