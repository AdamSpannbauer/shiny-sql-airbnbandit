library(shiny)
library(shinyAce)

sqlTextInputUI <- function(id,
                           label = "Write your query here",
                           placeholder = "SELECT clue FROM evidence;",
                           height = "200px", button_class = "primary") {
  ns <- NS(id)

  div(
    shiny::fluidRow(
      column(
        width = 12,
        h4(label),
        shinyAce::aceEditor(
          ns("code"),
          mode = "sql",
          theme = "chrome",
          height = height,
          debounce = 10,
          placeholder = placeholder
        )
      )
    ),
    shiny::fluidRow(
      column(
        width = 12,
        align = "right",
        actionButton(
          ns("run_query_button"),
          label = "Run query",
          icon = icon(
            "user-secret",
            class = "fa-pull-right",
            style = "font-size: 1.3em"
          ),
          class = paste0("btn-", button_class)
        )
      )
    )
  )
}

sqlTextInputServer <- function(id) {
  moduleServer(
    id,
    function(input, output, session) {
      input$run_query_button
      isolate(editor_text <- input$code)

      return(editor_text)
    }
  )
}
