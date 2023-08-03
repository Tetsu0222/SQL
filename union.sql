//集合演算

//和集合（重複含む）
SELECT n , s FROM t1
UNION ALL
SELECT a , b FROM t2;

→2つのテーブルの2つの列を1つ目のテーブルに和集合させる。
その際に、重複しているレコードも含める。

//和集合（重複含まない）
SELECT n , s FROM t1
UNION
SELECT a , b FROM t2;

→2つのテーブルの2つの列を1つ目のテーブルに和集合させる。
その際に、重複しているレコードは含めない。

