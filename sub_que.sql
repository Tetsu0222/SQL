//サブクエリ（副問い合わせ）

SELECT ename , sal
FROM emp
WHERE sal > ( SELECT AVG(sal) FROM emp );


//給与が平均以上の社員名を集計
//給与の平均をサブクエリで求める。
//メインクエリで給与の平均以上の社員名を抽出する流れ。