//GROUP BY句の後に、HAVING句でデータを絞り込むことができる。

SELECT job , COUNT(*) FROM emp
GROUP BY job
HAVING COUNT(*) > 1;

//jobテーブルからグループ毎に集計し、各グループ数を集計
//集計数が1件以上のグループにだけ絞り込み(HAVING)


//WHERE句とは、絞り込み集計されるタイミングが異なる。
//WHEREはGROUP BYの前、HAVINGは後で集計される。
//集計結果利用して絞り込みを行いたい場合はHAVINGを使用する。