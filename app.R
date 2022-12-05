#install.packages("shiny")
#install.packages("shinythemes")
#install.packages("plotly")
library(shiny)
library(shinythemes)
library(tidyverse)
library(dplyr)
library(ggplot2)
#library(plotly)

dl_co <- read.csv("https://nyc3.digitaloceanspaces.com/owid-public/data/co2/owid-co2-data.csv")

write.csv(dl_co, file = "owid-co2-data.csv")
