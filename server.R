library(shiny)
library(shinydashboard)

server <- function(input, output) {
  sqlEmulatorServer(id = "clue1_sql_editor")
  sqlEmulatorServer(id = "clue2_sql_editor")
  sqlEmulatorServer(id = "clue3_sql_editor")
  sqlEmulatorServer(id = "clue4_sql_editor")
  sqlEmulatorServer(id = "clue5_sql_editor")
  sqlEmulatorServer(id = "clue6_sql_editor")

  login_response_gif <- eventReactive(input$login_button, {
    req(input$username, input$password)

    if (toupper(input$username) == USERNAME & input$password == PASSWORD) {
      SUCCESS_GIF
    } else {
      sample(FAIL_GIFS, size = 1)
    }
  })

  output$response_img <- renderUI({
    req(login_response_gif())

    tags$img(
      src = login_response_gif(),
      width = "80%",
      style = "border-radius:10px"
    )
  })
}
