//USINGとNATURAL JOINの外部結合

//USING句に結合列を指定した外部結合
//USING句による左外部結合
SELECT empno , ename , dname
FROM emp LEFT OUTER JOIN dept
USING( deptno );

//NATURAL JOINの外部結合
SELECT empno , ename ,dname
FROM emp NATURAL LEFT OUTER JOIN dept;

//NATURAL ～ JOIN の間に、外部結合条件を挟み込んで指定する。    

