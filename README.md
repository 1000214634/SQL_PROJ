COVID-19 Data Analysis Project
Introduction

This project involves an in-depth analysis of COVID-19 data using advanced SQL techniques. The dataset includes comprehensive information about the pandemic's impact across various countries and continents, such as the number of cases, deaths, vaccinations, and tests conducted. By leveraging SQL, we can derive meaningful insights to understand the spread and severity of COVID-19 globally.
Dataset Description

The dataset, CovidDeaths$, contains the following columns:

    iso_code: ISO code of the country
    continent: Continent where the country is located
    location: Name of the country
    date: Date of the record
    total_cases: Total number of confirmed cases
    new_cases: Number of new cases on the recorded date
    new_cases_smoothed: Number of new cases averaged over the past 7 days
    total_deaths: Total number of confirmed deaths
    new_deaths: Number of new deaths on the recorded date
    new_deaths_smoothed: Number of new deaths averaged over the past 7 days
    total_cases_per_million: Total cases per million people
    new_cases_per_million: New cases per million people
    new_cases_smoothed_per_million: New cases smoothed per million people
    total_deaths_per_million: Total deaths per million people
    new_deaths_per_million: New deaths per million people
    new_deaths_smoothed_per_million: New deaths smoothed per million people
    reproduction_rate: Estimated reproduction rate of the virus
    icu_patients: Number of patients in intensive care units
    icu_patients_per_million: ICU patients per million people
    hosp_patients: Number of hospitalized patients
    hosp_patients_per_million: Hospitalized patients per million people
    weekly_icu_admissions: Weekly number of ICU admissions
    weekly_icu_admissions_per_million: Weekly ICU admissions per million people
    weekly_hosp_admissions: Weekly number of hospital admissions
    weekly_hosp_admissions_per_million: Weekly hospital admissions per million people
    new_tests: Number of new tests conducted
    total_tests: Total number of tests conducted
    total_tests_per_thousand: Total tests per thousand people
    new_tests_per_thousand: New tests per thousand people
    new_tests_smoothed: Number of new tests averaged over the past 7 days
    new_tests_smoothed_per_thousand: New tests smoothed per thousand people
    positive_rate: Proportion of positive tests
    tests_per_case: Number of tests conducted per case
    tests_units: Units used to measure tests (e.g., people tested, samples tested)
    total_vaccinations: Total number of vaccinations administered
    people_vaccinated: Number of people who received at least one dose of the vaccine
    people_fully_vaccinated: Number of people who received all doses prescribed by the vaccination protocol
    new_vaccinations: Number of new vaccinations administered
    new_vaccinations_smoothed: Number of new vaccinations averaged over the past 7 days
    total_vaccinations_per_hundred: Total vaccinations per hundred people
    people_vaccinated_per_hundred: Number of people vaccinated per hundred people
    people_fully_vaccinated_per_hundred: Number of people fully vaccinated per hundred people
    new_vaccinations_smoothed_per_million: New vaccinations smoothed per million people
    stringency_index: Government response stringency index (0-100)
    population: Population of the country
    population_density: Population density of the country
    median_age: Median age of the population
    aged_65_older: Percentage of the population aged 65 or older
    aged_70_older: Percentage of the population aged 70 or older
    gdp_per_capita: Gross Domestic Product per capita
    extreme_poverty: Percentage of the population in extreme poverty
    cardiovasc_death_rate: Cardiovascular death rate
    diabetes_prevalence: Diabetes prevalence
    female_smokers: Percentage of female smokers
    male_smokers: Percentage of male smokers
    handwashing_facilities: Percentage of the population with access to handwashing facilities
    hospital_beds_per_thousand: Number of hospital beds per thousand people
    life_expectancy: Life expectancy
    human_development_index: Human Development Index

Objectives

The main objectives of this project are:

    Aggregate Data: Summarize the total number of cases, deaths, and vaccinations by continent.
    Identify Trends: Find the countries with the highest and lowest new cases and deaths.
    Calculate Rates: Determine death rates, positive test rates, and vaccination rates.
    Analyze Impact: Compare the impact of COVID-19 across different continents and countries.
