library(shiny)

source("sql-editor-module.R")


ui <- fluidPage(
  fluidRow(
    column(
      width = 4,
      sqlTextInputUI(
        id = "query_editor_1",
        label = "Write your 1st query here",
        height = "150px",
        placeholder = "SELECT clue1 FROM evidence;"
      ),
      sqlTextInputUI(
        id = "query_editor_2",
        label = "Write your 2nd query here",
        height = "200px",
        placeholder = "SELECT clue1 FROM evidence;"
      ),
      textOutput("echo1"),
      textOutput("echo2")
    )
  )
)

server <- function(input, output, session) {
  output$echo1 <- renderText({
    sqlTextInputServer("query_editor_1")
  })

  output$echo2 <- renderText({
    sqlTextInputServer("query_editor_2")
  })
}

shinyApp(ui, server)
