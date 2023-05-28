//3つ以上のテーブルの結合

//ON句で3つのテーブルを結合する。
SELECT ename , tname , lname
FROM members m      
JOIN teams t ON m.teamno = t.teamno
JOIN league l ON t.leagueno = l.leagueno;


//テーブル名 テーブル別名(別名を付けると、以降はその別名でテーブルを指定できる)
//列名　列別名（同上）

//メンバーテーブルとチームテーブルを、チーム番号を条件に結合
//その結合した後のテーブルと、レギュラーテーブルを、レギュラー番号を条件に結合
//結果的に3つのテーブルを結合したテーブルが集計されている。


//USING と 自然結合でも3つ以上のテーブルを組み合わせることが可能

//USING
SELECT ename , tname , lname
FROM members m 
JOIN teams t USING(teamo)
JOIN league l USING(;eagueno);


//自然結合
SELECT ename , tname , lname
FROM members m
NATURAL JOIN teams t
NATURAL JOIN league l;


