library(shiny)
library(dplyr)
library(ggplot2)
library(tidyverse)
library(usmap)
library(plotly)
library(scales)


co2_dataset <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")

#which country has the highest CO2 emission in which country has the least?
#Which country has the highest population which country has the lowest population? 
#Which year has the most CO2 emissions in which year has the least CO2 emissions?

