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

server <- function(input, output) {
  compare1 <- reactive ({
    compare1 <- df1 %>%
      filter(df.country == input$country_one) %>%
      mutate(country = df.country, co2 = df.co2_per_capita) %>%
      filter((df.year) > input$year_range[1], (df.year) < input$year_range[2] %>%
               select((df.year), country, co2)
  })
    compare2 <- reactive ({
      compare2 <- df1 %>%
        filter(df.country == input$country_two) %>%
        mutate(country = df.country, co2 = df.co2_per_capita) %>%
        filter((df.year) > input$year_range[1], (df.year) < input$year_range[2]) %>%
        select((df.year), country, co2)
      
      country_one_name = as.character(input$country_one)
      country_two_name = as.character(input$country_two)
    })