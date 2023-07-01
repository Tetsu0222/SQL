//日付リテラル

INSERT INTO t_date1 VALUES( DATE '2021-01-01' );
//「DATE YYYY-MM-DD」で日付リテラルを生成、時間の指定は不可

//文字列を日時データへ変換
INSERT INTO t_data1 VALUES( TO_DATE( '2021/01/02 10:11:12' , 'YYYY/MM/DD HH24:MI:SS' ));
TO_DATEの第2引数で日時書式モデルを指定可能、第2引数を省略すると[YYYY/MM/DD HH24:MI:SS]で自動的に適用される。
※NLS_DATE_FORMAT初期化パラメータに設定された日時書式モデルのフォーマットが適用される。

//NLS_DATE_FORMAT
文字列を日時に暗黙的な変換を行うだけでなく、日時データを表示する時の表示書式となる。


//NLS_DATE_FORMATの表示書式の設定
ALTER SESSION SET NLS_DATE_FORMAT='YYYY/MM/DD HH24:MI:SS';

//NLS_DATE_FORMATのデフォルト値
NLS_TERRITORYの初期パラメータに設定された地域によって決定される。
