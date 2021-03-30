select day, count(*), sum(duration) from assignments
group by day
order by day