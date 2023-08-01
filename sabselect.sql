//非スカラー副問い合わせ
複数の行における1つの列の値を戻すサブクエリ
1つの行における複数の列の値を戻すサブクエリ
複数行における複数の列の値を戻すサブクエリ

→スカラー副問い合わせは1つの行における1つの列の値を戻すサブクエリ
1対1以外は非スカラー副問い合わせに分類される。

→非スカラー副問い合わせには「=」ではなく「IN」などを使用する。



//IN句
SELECT dname
FROM dept
WHERE deptno IN ( SELECT deptno FROM emp WHERE job = 'SALESMAN' );


//ANY句
SELECT ename , sal
FROM emp
WHERE sal > ANY( SELECT sak FROM emp WHERE job = 'ASSISTANT' );
→職種がアシスタントである複数社員の給与のいずれかよりも多い給与をもらっている社員を求める。


//ALL句
SELECT ename , sal 
FROM emp
WHERE sal > ALL ( SELECT sal FROM emp WHERE job = 'ASSISTANT' );

→職種がアシスタントである複数社員におけるすべての給与よりも多い給与をもらっている社員を求める。


//相関サブクエリ
SELECT ename , sal
FROM emp1 e
WHERE sal < ( SELECT MAX( sal ) FROM sal_hist s WHERE s.ename = e.empno );