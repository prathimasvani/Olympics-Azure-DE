--- Count Number of Athletes from Each Country ----

select country,count(*) as TotalAthletes
from athletes
group by country 
order by TotalAthletes desc  


--- Calculate the total medals won by each Country ---

select teamcountry,
sum(gold) as total_gold,
sum(silver) as total_silver,
sum(bronze) as total_bronze
from medals
group by teamcountry 
order by total_gold desc,total_silver desc,total_bronze desc 

--- Calculate the average number of entries by gender for each discipline---

select Discipline,
       avg(male) as avg_male_entries,
       avg(female) as avg_female_entries
from entriesgender
group by discipline 
order by Discipline desc 
