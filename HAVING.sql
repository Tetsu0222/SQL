//GROUP BY句の後に、HAVING句でデータを絞り込むことができる。

SELECT job , COUNT(*) FROM emp
GROUP BY job
HAVING COUNT(*) > 1;

//jobテーブルからグループ毎に集計し、各グループ数を集計
//集計数が1件以上のグループにだけ絞り込み(HAVING)