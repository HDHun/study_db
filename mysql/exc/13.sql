select 
a.sppdName
,(select spitItem from spitem where  and a.sppdSeq = c.sppdSeq) as product
from spproduct a
left join spproductitem c on c.sppiDelNy = 0;