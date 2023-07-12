//文字列ファンクションのWHERE句での使用
SELECT ename , job
FROM emp
WHERE LOWER( job ) = 'assistant';


//CONCATファンクション
SELECT CONCAT( ename , '***' )
FROM emp
WHERE job = 'SALESMAN';

→引数で指定した2つの文字列を結合する。

//SUBSTR
SELECT SUBSTR( '1234567890' , 8 , 10 )
FROM dual;

→文字列の第2引数から第3引数の文字数分を抜き出す。
第3引数を省略すると末尾まで抜き出す。
第2引数を負数にすると末尾から指定の数を数えて抜き出す。

