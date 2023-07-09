//置換変数
//入力したSQLの一部を実行前に書き換える機能
//一部だけ異なる似たSQLを繰り返す時に使用する。


//&使用例
SELECT *
FROM emp
WHERE empno = &empno

→置換変数を入力して実行すると対話的に指定できる。
emonoに値を入力してください:1001 ←ここに入力



//&&使用例
SELECT ename , &&col_name
FROM emp
WHERE job = 'SALESMAN'
ORDER BY &col_name;


//1つ目のcol_nameが&col_nameだけだった場合
col_nameに値を入力してください: sal
col_nameに値を入力してください: sal
→2つのcol_nameに対して入力が求められる。


//1つ目のcol_nameが&&col_nameだけだった場合
col_nameに値を入力してください: sal
→SQLの1行目の置換前後の状態が出力されている。


