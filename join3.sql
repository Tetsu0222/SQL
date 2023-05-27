//USING句
//2つのテーブルを結合する際に、同じ名前の列で結合する場合に使用できる。
//例えば、社員番号が2つのテーブルに存在する場合、その社員番号を指定してUSINGを使用可能

SELECT empno , ename , dname
FROM emp JOIN dept
USING( deptno );

//ON句の代わりに、USINGで結合条件を社員番号として指定している。
//異なる列名同士で結合する場合は、ON句を使用する。
//ON句でも同じ列名同士で結合できるが、USINGの方が記述量が少なくできる。



//自然結合
//NATURAL JOINを用いてテーブル同士を結合させる。
//結合する列の名前とデータ型が同じ場合に使用できる。

SELECT empno , ename , dname
FROM emp NATURAL JOIN dept;

//ON句やUSING句のように、明示的に結合する列を指定していない。
//列名とデータ型で自動的に結合する列が選択される。
