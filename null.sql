//NULLは以下のいずれかの処理を実行すると、列にNULLが設定される。

//列にNULL値を指定して、UPDATEもしくはINSERTを実行する。
UPDATE t_null SET s = NULL
WHERE i = 1 ;

//列および列値の指定を省略してINSERTを実行する。
INSERT INTO( i , s )
VALUES( 2 , NULL );

//列値に空文字列を指定、UPDATEまたはINSERTを実行
UPDATE t_null
SET s = ''
WHERE i = 4;

//NULLを含む算術式は、常にNULLとなる。
NULLを含むレコードを集計する場合は、関連ファンクションを用いる。
文字連結の場合は、NULLを含めても、指定した文字列で反映される。

//NULLの検索
SELECT *
FROM t_null
WHERE s IS NULL;

//NULLではない値の検索
SELECT *
FROM t_null
WHERE s IS NOT NULL;