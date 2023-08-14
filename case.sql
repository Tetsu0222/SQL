CASE式


//例文
SELECT name , sal
case name when empno then true
else false
end as '部署'
from emp2
where sal > 0 ;


//例文
select employee_mst.EMPLOYEE_ID , EMPLOYEE_NM ,
case when sex = 1 then '男性'
else '女性'
end as '性別'
from employee_mst
join employee_enrollment
on employee_mst.EMPLOYEE_ID = employee_enrollment.EMPLOYEE_ID
where employee_enrollment.RETIRED_FLG = '0'
order by employee_mst.EMPLOYEE_ID;


//例文
select EMPLOYEE_ID , sum( CASE WHEN DIVISION_CD = 'D001' then CAREER_HST_NO else null end )
from employee_career_hst
group by EMPLOYEE_ID;


//FILTER句
SELECT
year,
SUM(sales) FILTER (WHERE month = 1) Jan,
SUM(sales) FILTER (WHERE month = 2) Feb,
FROM t1
GROUP BY year;



(構文)
case <評価する列や式> when <判断する値> then <判断する値だった時に返す値>
else <いずれの判断する値ではない時に、返す値>
end [ AS 列名 ];

(構文2)
case when <条件> then <条件に合致する時に返す値>
else <いずれの条件にも合致しない時に返す値>
end [ AS 列名 ];
