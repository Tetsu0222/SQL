//マルチテーブルインサート



//無条件INSERT
insert all
into t1 values( n , c1 )
into t2 values( n , c2 )
select n , c1 , c2 from t0;

→selectで始まるサブクエリが戻す行が、すべてのINTO句に指定したターゲット表にINSERTされる。
→複数のINTO句を指定できる。
→VALUES句にサブクエリから戻される行の列名を指定できる。
→サブクエリが戻す列数とターゲット表の列数が等しい場合、values句の指定を省略できる。