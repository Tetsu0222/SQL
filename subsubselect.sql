//相関サブクエリ
SELECT ename , sal from emp1 e
where sal < ( SELECT max(sal) from sal_hist s where s.empno = e.empno );

→emp1表から、sal_hist表の最大salよりも高いsalは設定されているデータを抽出する。
その際に、sal_hist表全体での最大salではなく、empno毎で最大値を集計して絞り込む。

相関（グルーピング）する列をサブクエリのwhere句に結合するように記述する。
メインクエリのwhere句にサブクエリを記述する。


//自己相関サブクエリ
SELECT ename , sal , deptno from emp2 t1
where sal > ( select avg(sal) from emp2 t2 where t1.deptno = t2.deptno );

→deptno毎に相関（グルーピング）
→deptno別でsalの平均値を算出、その平均値よりも高いsalが設定されているレコードを抽出する。
