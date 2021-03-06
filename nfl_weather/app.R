#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(tidyverse)
library(ggplot2)
library(gsheet)
library(lubridate)
library(DT)

ui <- fluidPage()

server <- function(input, output)
    
shinyApp(ui = ui, server = server)
