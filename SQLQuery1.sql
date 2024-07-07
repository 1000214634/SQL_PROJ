
--Covid 19 Data Exploration 


select *
from CovidDeaths$


select *
from CovidDeaths$
where continent is not null
order by location,date



select location,date,total_cases,new_cases,population,total_deaths
from CovidDeaths$
where continent='Africa' and  location='Egypt'
order by 3,4


-- Total Cases vs Total Deaths

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as	DeathPercentage
from CovidDeaths$
where location='Egypt'
order by location,date desc



-- Total Cases vs Population
-- Shows what percentage of population infected with Covid

select location,date,population,total_cases,(total_cases/population)*100 as PercentPopulationInfected
from CovidDeaths$
where location='Egypt'
order by location,date desc


-- Countries with Highest Infection Rate compared to Population

select location,population,max(total_cases) as HighestInfectionCount,max(total_cases/population) as PercentagePopulationInfected
from CovidDeaths$
where continent is not null
group by location,population
order by PercentagePopulationInfected desc


-- Countries with Highest Death Count per Population
select location,max(cast(total_deaths as int)) as TotalDeathCount
from CovidDeaths$
where continent is not null 
group by location
order by TotalDeathCount desc


 --the CAST function is used to convert an expression from one data type to another. 
 --This can be particularly useful when you need to ensure that data is represented in a specific format for operations or comparisons.



 -- Showing contintents with the highest death count per populalation
Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From CovidDeaths$
--Where location like '%states%'
Where continent is not null 
Group by continent
order by TotalDeathCount


--Egypt 
Select location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From CovidDeaths$
--Where location like '%states%'
Where location='Egypt'
Group by location
order by TotalDeathCount
-----------------------------------------------------------------
select sum(new_cases)as total_cases,sum(cast(new_deaths as int)) as total_deaths,sum(cast(new_deaths as int))/sum(new_cases)*100 as DeathPercentage
from CovidDeaths$
where continent is not null 
order by DeathPercentage desc


--Combine the two tables
select *
from CovidDeaths$ dea
join CovidVaccinations$ vac
on dea.location=vac.location
and dea.date=vac.date



-- Total Population vs Vaccinations
-- Shows Percentage of Population that has recieved at least one Covid Vaccine

select dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
,sum(cast(vac.new_vaccinations as int))  over (partition by dea.location order by dea.location,dea.date) as RollingPeopleVacinated
--(RollingPeopleVacinated/opulation)*100
from CovidDeaths$ dea
join CovidVaccinations$ vac
on dea.location=vac.location
and dea.date=vac.date
where dea.continent is not null and vac.new_vaccinations is not null
order by 2,3

-- Using CTE to perform Calculation on Partition By in previous query

With PopvsVac (Continent, Location, Date, Population, New_Vaccinations, RollingPeopleVaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(int,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
From CovidDeaths$ dea
Join CovidVaccinations$ vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
--order by 2,3
)
Select *, (RollingPeopleVaccinated/Population)*100
From PopvsVac

 ----------------------------------------------------------------------------------------------
 
-- Total number of cases reported on October 16, 2020.
--Total number of deaths reported on October 16, 2020.
--Population of Albania.
--New cases per million on October 16, 2020.
--Total number of tests conducted as of October 16, 2020.
--Stringency index on October 16, 2020.
--Calculate the death rate (total deaths per total cases) as of October 16, 2020.
--Find the testing rate per thousand people as of October 16, 2020.
--Calculate the percentage of the population that is aged 65 or older.
--Determine the number of new cases and new deaths per million over a smoothed period on October 16, 2020.


 




