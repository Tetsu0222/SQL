//副問い合わせ

//スカラー副問い合わせ
SELECT ename , sal
FROM emp
WHERE sal > ( SELECT AVG( sal ) FROM emp );

→1つの行における1つの列の値を戻す。
例であれば、給与額が平均より上の社員をリストアップする。


//HAVING句でのスカラー副問い合わせ
SELECT deptno , AVG( sal )
FROM emp
GROUP BY deptno
HAVING AVG( sal ) < ( SELECT AVG( sal ) FROM emp );

→全社員の平均給与より、平均給与が低い部署を抽出