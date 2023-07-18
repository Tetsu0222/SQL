//日時ファンクション

//ADD_MONTHS
SELECT ADD_MONTHS( '2021/02/14 12:05:10' , 1 )
FROM dual;

→1ヵ月後の日付を戻す。
第2引数を負数にすると、遡って日付を戻す。


//MONTHS_BETWEEN
SELECT MONTHS_BETWEEN( '2021/03/14 12:05:10' , '2021/02/14 12:05:10' )
FROM dual;

→第1と第2引数の期間を戻す。


//NEXT_DAY
SELECT NEXT_DAY( '2021/02/14 12:05:10' , '金' )
FROM dual;

→指定した日付より後の、次の金曜日の日付を求める。


//LAST_DAY
SELECT LAST_DAY( '2021/02/14 12:05:10' )
FROM dual;

→指定した日付の月の最終日を求める。


//SYSDATE
SELECT SYSDATE
FROM dual;

→システムの日付を返す。