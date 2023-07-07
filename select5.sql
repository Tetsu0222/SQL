//優先順位
//()を使用して、同じ文章でも、検索条件を変更して異なる結果にすることが可能


//()未使用
SELECT ename , sal , job , deptno
FROM emp
WHERE NOT sal >= 700
OR job = 'SALESMAN'
AND deptno IN( 10 , 20 );

→「=」系が最も優先順位が高く、最初に処理される。
→[IS][LIKE][BETWEEN][IN][EXISTS]が次に優先順位が高い。
→NOT
→AND
→OR

=「給与が700未満」
「職種がセールスマンかつ所属部門が10か20」
上記のどちらかでヒット



//()使用
SELECT ename , sal , job , deptno
FROM emp
WHERE ( NOT sal >= 700 OR job = 'SALESMAN' )
AND deptno IN ( 10 , 20 );

=「給与が700未満」かつ「所属部門が10か20のいずれか」
「職種がセールスマン」かつ「所属部門が10か20のいずれか」
上記のどちらかの組み合わせでヒット

