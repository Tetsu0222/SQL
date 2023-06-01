
//スカラーサブクエリ
//1つの行における1つの列の値を戻すサブクエリ


//WHERE句以外でのサブクエリ

//HAVINGでのサブクエリ
//全社員の平均給与より、平均給与が低い部署
SELECT deptno , AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) < ( SELECT AVG(sal) FROM emp ); //ここのサブクエリは1つの行における1つの列を戻すように記述する。