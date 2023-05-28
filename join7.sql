//非等価結合

//等価条件式「=」を使わずに結合すること全般を示す言葉
//最もよく使われるものとしてBETWEEN条件式がある。

//上限値～下限値の幅を持つデータと結合させる時に使用する。

SELECT ename , sal , greade , lowest_sal , highest_sal
FROM emp JOIN job_greades
ON sal BETWEEN lowest_sal AND highest_sal;


//集計結果
ENAME : SAL : G : lowest_sal : highest_sal
Tom : 720 : B : 600 : 799
Abe : 600 : B : 600 : 799
Clasrk : 720 : B : 600 :799
Blake : 900 : C : 800 : 999
Bob : 510 : A : 400 : 599


//USINGと自然結合は、等価結合のみ可能
//上記のように、BETWEENで結合することはできない。