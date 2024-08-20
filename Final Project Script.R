#Uploading data step

olympics <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-08-06/olympics.csv')

library(gtsummary)
library(tidyverse)
library(broom)

#Create descriptive stats table

tbl_summary(
	olympics,
	by = sex,
	include = c(sex, age, season, medal))

#Univariate regression




