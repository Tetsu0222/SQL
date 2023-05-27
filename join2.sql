//外部結合

//結合条件を満たしていないデータも表示したい場合は、内部結合ではなく外部結合を用いる。
//例えば、社員番号同士を結合条件としていても、社員番号が割り当てられていない項目（社長や役員など）が存在する場合
//それらのデータは、内部結合において、除外されて集計されてしまう。


//外部結合は、結合条件を満たしていないデータをどの表から参照するかで、3つの種類に分類される。



//左外部結合
SELECT empno , ename , dname
FROM emp LEFT OUTER JOIN dept   //右外部結合の場合は、RIGHT OUTER JOINを用いる。
ON emp.deptno = dept.deptno;

//結合条件を満たしていないデータは、左側か右側で指定したテーブルから取得する。



//完全外部結合
SELECT empno , ename , dname
FROM emp FULL OUTER JOIN dept
ON emp.deptno = dept.deptno;

//左右のどちらのテーブルからも、結合条件を満たしていないデータがあれば、それを集計対象に含めて検索する。


