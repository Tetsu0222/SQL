//DML文
データ操作文
INSERTやUPDATEなどテーブルのレコードを直に操作する。


//INSERT
INSERT INTO t1 ( n , s )
VALUES( 1 , 'AAA' );

(構文)
INSERT INTO <表名> ( <列名>... )
VALUES( <値>... );

(スカラーサブクエリの使用)
INSERT INTO emp6(empno,ename,sal)
VALUES( 1009 , 'Joe' , ( SELECT sal FROM emp6 WHERE empno = 1001 ));

→追加するレコードの給与は、社員番号1001と同じに設定する。



//UPDATE
UPDATE emp2
SET sal = 1000
where empno = 1001;

(構文)
UPDATE <表名>
SET <列名> = <値>
[where <条件式>]

(UPDATEのスカラーサブクエリ)
UPDATE emp7
SET sal = ( SELECT sal FROM emp7 WHERE empno = 1001 )
WHERE empno = 1006;

→社員番号1006の給与を社員番号1001の給与と同額に変更

(UPDATEの非スカラー副問い合わせ)
UPDATE emp9
set ( sal , comm_pct ) = ( select sal , comm_pct from emp9 where empno = 1001 );


(相関サブクエリの使用)
update emp1 e
set sal = ( select new_sal from new_sal_emp s where s.emono = e.empno );


//DELETE
DELETE emp5
where empno = 1006;

(構文)
DELETE <表名>
[where 条件式];

(whereでのサブクエリ)
DELETE emp8
where sal < ( SELECT sal from emp8 where emono = 1001 );