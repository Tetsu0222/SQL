//行の並べ替え

//ORDER BYを使用する。


//構文
SELECT <列名>
FROM <表名>
ORDER BY <列名>


//使用例
SELECT deptno , dname
FROM dept
ORDER BY deptno;

= deptno順に結果がソートされる。


//降順
SELECT deptno , dname
FROM dept
ORDER BY deptno DESC;

→DESCを付与する。
デフォルトは昇順だが、ASCを付与すると昇順となる。


//列名ではなく位置番号での指定
SELECT deptno , dname
FROM dept
ORDER BY 1 ;

→ SELECT句に列挙した列の1番目をソート条件に指定


//複数列をソート条件に指定
SELECT ename , sal
FROM emp
ORDER BY sal DESC , ename ASC;

→ SAL順で降順ソートした後、SAL列の値が同じである同順位のデータはENAME列で昇順ソート


//SELECT句にない列でのソート
SELECT empno , ename
FROM emp
ORDER BY sal;

→ そのまま指定すればSAL列の昇順ソートされる。


//NULLの扱い
//NULLは昇順では末尾、降順では先頭に表示される。
//NULLの表示位置の制御も可能
SELECT empno , ename
FROM emp
ORDER BY sal DESC NULLS LAST;