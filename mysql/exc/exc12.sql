




select 
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
,b.ifcdUseNy
,b.ifcdDelNy
 from infrCodeGroup a
 left join infrCode b on b.ifcgSeq = a.ifcgSeq;

-- order by
 -- a.ifcgSeq desc
 -- ,a.ifcgName desc
--  ,b.ifcdOrder desc;
-- 역순 desc

select *from infrMember;





select 
a.ifmmSeq
,a.ifmmAdminNy
,a.ifmmName
,a.ifmmId
,a.ifmmGenderCd
,(select ifcdName from infrCode where ifcdSeq = a.ifmmgenderCd) as ifmmgenderName
,a.ifmmDob
,a.ifmmSavedCd
,(select ifcdName from infrCode where ifcdSeq = a.ifmmSavedCd) as ifmmSavedName
,a.ifmmMarriageCd
,(select ifcdName from infrCode where ifcdSeq = a.ifmmMarriageCd) as ifmmMarriageName
,a.ifmmMarriageDate
,a.ifmmChildrenNum
,b.ifmaTitle
,b.ifmaAddress1
,b.ifmaZipCode
,c.ifaoTypeCd
,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
,c.ifaoSnsTypeCd
,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
,c.ifaoTitle
,c.ifaoUrl
,d.ifmeTypeCd
,(select ifcdName from infrCode where ifcdSeq = d.ifmeTypeCd) as ifmeTypeName
,d.ifmeEmailFull
,f.ifjqQuestionCd
,(select ifcdName from infrCode where ifcdSeq = f.ifjqQuestionCd) as ifjqQuesionName
,f.ifjqAnswer
,g.ifnaSeq
,(select ifnaName from infrnationality where ifnaSeq = g.ifnaSeq) as ifnaNationName
,h.ifmpTypeCd
,(select ifcdName from infrCode where ifcdSeq = h.ifmpTypeCd) as ifmpTypeName
,h.ifmpDeviceCd
,(select ifcdName from infrCode where ifcdSeq = h.ifmpDeviceCd) as ifmpDeviceName
,h.ifmpTelecomCd
,(select ifcdName from infrCode where ifcdSeq = h.ifmpTelecomCd) as ifmpTelecomName
,h.ifmpNumber
from infrMember a
left join infrMemberAddress b on b.ifmaDelNy = 0 and b.ifmaDefaultNy = 1 and b.ifmmSeq = a.ifmmSeq
left join infrMemberAddressOnline c on c.ifaoDelNy = 0 and c.ifaoDefaultNy = 1 and c.ifmmSeq = a.ifmmSeq
left join infrMemberEmail d on d.ifmeDelNy = 0 and d.ifmeDefaultNy = 1 and d.ifmmSeq = a.ifmmSeq
left join infrmemberjoinqna f on f.ifmaDelNy = 0 and f.ifmmseq = a.ifmmseq
left join infrmembernationality g on g.ifmnDelNy = 0 and g.ifmmseq = a.ifmmseq
left join infrmemberphone h on h.ifmpDelNy = 0 and ifmpDefaultNy = 1 and h.ifmmseq = a.ifmmseq;

--  	where 1=1
--  	and a.ifmmDelNy = 0
 --     and a.ifmmId like '%dh%';    
    -- concat(substring(h.ifmpNumber,1,3),"-",substring(h.ifmpNumber,4,4),"-",substring(h.ifmpNumber,7,4) : 01000000000 -> 010-0000-0000
	-- ifnull(c.ifaoSnsTypeCd,"-") as ifaoSnsTypeCdNullCheck : Null값에 '-'

select*from infrmemberphone;
select*from infrauthmenu;
select*from infrcode;
select*from infrnationality;

select 
a.ifatSeq
,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
,a.ifmuSeq
,(select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName
,a.ifauRoleCd
,(select ifcdName from infrCode where ifcdSeq = a.ifauRoleCd) as ifauRoleName
from infrAuthMenu a;

