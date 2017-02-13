library(shiny)
library(datasets)
library(ggplot2)
shinyUI(fluidPage(
  titlePanel("Diamond Price Based on Weight"),
  sidebarLayout(
    sidebarPanel (
      helpText("Provide the size of the diamond dataset to display the relation of price with diamond quality"),
      sliderInput('sampleSize', 'Sample Size', min = 1, max = nrow(diamonds),
                  value = 1000, step = 1000, round = 0)
    ),
    mainPanel(
      plotOutput("diamondPlot")
    )
  )
))