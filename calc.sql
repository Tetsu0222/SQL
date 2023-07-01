//算術計算

//WHERE句で使用
SELECT ename , sal , bonus
FROM emp
WHERE bonus > sal * 2 ;
→ボーナスが月の給与の2倍の社員

//SELECT句で使用
SELECT ename , sal * 12
FROM emp;
→社員別の年間給与

//優先順位
掛け算と割り算が先に計算される。
()で優先順位を変更できる。


//文字の連結
SELECT ename || 'さん' , '職種：' || job
FROM emp;
→<社員名>さん　職種：<職種名>
上記で出力される。
