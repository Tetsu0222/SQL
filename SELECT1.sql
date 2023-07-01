//基本的なSELECT文

//構文
SELECT <列名>
FROM <テーブル名>;

//例文
SELECT empno , ename
FROM emp;

//指定のテーブルのすべての行を抽出
SELECT *
FROM emp;

//条件の絞り込み
SELECT *
FROM emp
WHERE sal < 500;

//列の別名
//一定条件下の列別名は""が必要になるが
//条件に合致しなくても""で囲うことが推奨される。
SELECT empno AS "employee_number" , ename
FROM emp;