CASE式


//例文
SELECT name , sal
case name when empno then true
else false
end as '部署'
from emp2
where sal > 0 ;


(構文)
case <評価する列や式> when <判断する値> then <判断する値だった時に返す値>
else <いずれの判断する値ではない時に、返す値>
end [ AS 列名 ];

(構文2)
case when <条件> then <条件に合致する時に返す値>
else <いずれの条件にも合致しない時に返す値>
end [ AS 列名 ];
