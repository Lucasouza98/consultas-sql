declare @startDate date;
declare @endDate date;

select @startDate = '20150701';
select @endDate = '20150705';

with dateRange as
(
select dt = @startDate
where @startDate < @endDate
union all
select dateadd(dd, 1, dt)
from dateRange
where dateadd(dd, 1, dt) <= @endDate
)
select convert(varchar(MAX),dt,103)
from dateRange

