library(shiny)
library(DT)
library(data.table)
library(sqldf)

source("modules/sql-editor-module.R")

calendar <- fread("data/calendar-asheville-20230319.csv.gz")
listings <- fread("data/listings-asheville-20230319.csv.gz")
reviews <- fread("data/reviews-asheville-20230319.csv.gz")

ui <- fluidPage(
  fluidRow(
    column(
      width = 12,
      sqlEmulatorUI(
        id = "query_editor",
        label = "Write your 1st query here",
        height = "150px",
        placeholder = "SELECT clue1 FROM evidence;",
        icon = "user-secret"
      )
    )
  )
)

server <- function(input, output, session) {
  sqlEmulatorServer(id = "query_editor")
}

shinyApp(ui, server)
