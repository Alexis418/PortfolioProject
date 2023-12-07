Select * 
FROM PortfolioProject..home_school_district$
order by 3, 4


select * 
From Portfolioproject..home_school_state$



-- Looking for states for highest number of homeschool_students

Select state, MAX(homeschool_students) as Maxhometotal
FROM PortfolioProject..home_school_district$
Group by state 
order by Maxhometotal desc 



--looking for homeschool students according to states

Select *
FROM PortfolioProject..home_school_state$
order by 1,2



-- lets look for the highest number of homeschool students per states

Select state, MAX(homeschool_students) AS Total
FROM PortfolioProject..home_school_state$
group by state
order by Total desc


-- looking for the year with the highest number of home school

select year, MAX(homeschool_students) as Total
from PortfolioProject..home_school_state$
group by  year
order by Total desc



-- joining both tables

select *
From PortfolioProject..home_school_state$
	left outer join PortfolioProject..home_school_district$
	ON home_school_state$.state = home_school_district$.state




-- looking for the average of homeschool students in a state (florida)

select home_school_state$.state, AVG (home_school_state$.homeschool_students) AS AvgFlo
From PortfolioProject..home_school_state$
	left outer join PortfolioProject..home_school_district$
	ON home_school_state$.state = home_school_district$.state
	where home_school_state$.state = 'florida'
	GROUP BY home_school_state$.state
	
	
