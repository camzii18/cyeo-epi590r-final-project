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

tbl_uvregression(
	olympics,
	y = age,
	include = c(sex, height, weight),
	method = lm)



#Creating a figure

```{r fig-hist, fig.cap="Age Spread"}
hist(olympics$age)


#Writing and using a function

categorize_age <- function(age) {
	if (is.na(age)) {
		return(NA)
	} else if (age < 20) {
		return("Teen")
	} else if (age >= 20 & age < 30) {
		return("Young Adult")
	} else if (age >= 30 & age < 40) {
		return("Adult")
	} else {
		return("Senior")
	}
}

#Test function

categorize_age(27)


#Create and render Quarto


#here package

install.packages("here")
here::here()


