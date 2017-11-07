### 
###



library(shiny)
library(leaflet)

peaks <- read.csv("/home/simon/peaks/1500.csv")


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Movie explorer"),
  fluidRow(
    column(2,
           wellPanel(
             h4("Filter"),
             sliderInput("reviews", "Minimum number of reviews on Rotten Tomatoes",
                         1500, 8900, step = 10, value = c(1500,8900))
           ),
           wellPanel(
             selectInput("xvar", "X-axis variable", axis_vars, selected = "Meter"),
             selectInput("yvar", "Y-axis variable", axis_vars, selected = "")
           )
    ))
))
