//NOT条件
//真ではない値のデータを確認したい場合に使用する。

//LIKEとの併用
//文字列の先頭にBが含まれない値のデータを抽出
SELECT empno , ename
FROM emp
WHERE ename NOT LIKE 'B%';

//INとの併用
//いずれでもない値のデータを抽出
SELECT ename , job
FROM emp
WHERE job NOT IN( 'ASSISTANT' , 'MANAGER' );