//DML文
データ操作文
INSERTやUPDATEなどテーブルのレコードを直に操作する。


//INSERT
INSERT INTO t1 ( n , s )
VALUES( 1 , 'AAA' );

(構文)
INSERT INTO <表名> ( <列名>... )
VALUES( <値>... );


//UPDATE
UPDATE emp2
SET sal = 1000
where empno = 1001;

(構文)
UPDATE <表名>
SET <列名> = <値>
[where <条件式>]


//DELETE
DELETE emp5
where empno = 1006;

(構文)
DELETE <表名>
[where 条件式];