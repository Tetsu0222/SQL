//日時データの四捨五入、および切り捨て


//ROUND
SELECT ROUND( TO_DATE( '2021/09/16 10:11:12' ))
FROM dual;

→第2引数を省略すると、DDで四捨五入
2021/09/16 00:00:00


//TRUNC
SELECT TRUNC( TO_DATE( '2021/09/16 10:11:12' ))
FROM dual;

→日時をDDで切り捨て


→DD MM などで四捨五入や切り捨て個所を第2引数で指定できる。


