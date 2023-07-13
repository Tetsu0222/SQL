//LPAD
SELECT LPAD( '12345' , 10 , '*' )
FROM dual;

→10文字になるまで左側に「*」で埋める。
第1引数が編集元、第2引数が結果の文字数、第3引数が埋める文字

//RPAD
右側バージョン



//REPLACE
SELECT REPLACE( 'ABCDEFGHI' , 'ABC' , 'abc' )
FROM dual;

→第1引数が編集元、第2引数が変換する文字、第3引数が変換後の文字


//TRIM
SELECT TRIM( ' ABC ' )
FROM dual;

→先頭と末尾から連続する空白を削除する。

SELECT TRIM( LEADING '*' FROM '**ABC**' )
FROM dual;

→先頭の連続する「*」を削除する。


SELECT TRIM( TRAILING '*' FROM '**ABC**' )
FROM dual;

→末尾の連続する「*」を削除する。
