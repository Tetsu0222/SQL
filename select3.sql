//比較条件
SELECT empno , ename , sal
FROM empn
WHERE sal > 700;

//LIKE条件
SELECT empno , ename
FROM emp
WHERE ename LIKE 'B%';

//IN検索
//()内のどちらかと一致したものが返る。
//ORよりも記述量が短い。
SELECT ename , job
FROM emp
WHERE job IN ( 'ASSISTANT' , 'MANAGER' );

//BETWEEN検索
//範囲検索、列値が上限値と下限値の範囲に含まれる。
SELECT ename , sal
FROM emp
WHERE sal BETWEEN 600 AND 700;