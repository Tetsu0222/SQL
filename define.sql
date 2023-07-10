//DEFINEコマンド
//SQL実行前に、置換後の値をあらかじめDEFINEコマンドで指定しておくことが可能

//構文
DEFINE<変数名> = <値>

//使用例
DEFINE empno = 1001
SELECT *
FROM emp
WHERE empno = &empno;


//UNDEFINEで設定を解除可能



//新旧の表示はVERIFYで解除が可能
SET VERIFI OFF

