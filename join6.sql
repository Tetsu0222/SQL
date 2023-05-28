//自己結合

//同じ表を結合することが可能（1つのテーブルで結合する）
//自己結合は1つの表内の行の間に、上下関係（上司や部下、部品の包含関係など）がある場合に使用される。

SELECT p.parts_id , p.name , c.pname
FROM parts p
JOIN parts c
ON p.part_id = c.parent_parts_id;



//パーツテーブルを自己結合
//部品の包含関係を表形式で示している。


//集計結果前
PARTS_ID : PNAME : parent_parts_id
1 : CAR : NULL
2 : ENGINE : 1
3 : TORES : 1
4 : DESK : NULL
5 : BOARD : 5
6 : BARS : 5


//集計結果後
PARTS_ID : P.PNAME : C.PNAME
1 : CAR : ENGINE
1 : CAR : TIRES
5 : DESK : BOARD
5 : DESK : BARS


//同じ表を、表別名に対応する別々の表としてコピー、それらの表同士を結合させるイメージ
//上記の例えでいえば、同じ表をpとcの別名で定義して、2つの同じテーブルを生成
//2つの同じテーブルを「p.part_id = c.parent_parts_id」を条件に結合している。


//1つのテーブル内で、別表記させたい時などに使用
//すでにデータが格納されているテーブルを、再生成するのはリスキーかつ稼働がかかる。
//そのため、自己結合によって集計方法を変更することで、格納しているデータやテーブルへ影響を生じさせない手法
