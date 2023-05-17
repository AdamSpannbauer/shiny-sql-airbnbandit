library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  skin = "red",
  title = "SQL AirbnBandit!",
  dashboardHeader(
    title = "SQL AirbnBandit"
  ),
  dashboardSidebar(
    sidebarMenu(
      menuItem(
        text = "Intro",
        tabName = "intro",
        icon = icon("map")
      ),
      menuItem(
        text = "SQL Resources",
        tabName = "sql_resources",
        icon = icon("laptop-file")
      ),
      menuItem(
        text = "Database Overview",
        tabName = "database_overview",
        icon = icon("database")
      ),
      menuItem(
        text = "Clues",
        tabName = "clues",
        icon = icon("puzzle-piece"),
        menuSubItem(
          text = "Clue 1",
          tabName = "tabclue1"
        ),
        menuSubItem(
          text = "Clue 2",
          tabName = "tabclue2"
        ),
        menuSubItem(
          text = "Clue 3",
          tabName = "tabclue3"
        ),
        menuSubItem(
          text = "Clue 4",
          tabName = "tabclue4"
        ),
        menuSubItem(
          text = "Clue 5",
          tabName = "tabclue5"
        ),
        menuSubItem(
          text = "Clue 6",
          tabName = "tabclue6"
        )
      ),
      menuItem(
        text = "AirbnBandit Login",
        tabName = "login",
        icon = icon("right-to-bracket")
      )
    )
  ),
  dashboardBody(
    tags$head(
      tags$link(
        rel = "stylesheet",
        type = "text/css",
        href = "style.css"
      ),
      tags$link(
        rel = "shortcut icon",
        href = "favicon.ico"
      )
    ),
    tabItems(
      tabItem(
        tabName = "intro",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/intro-page.md")
          )
        )
      ),
      tabItem(
        tabName = "sql_resources",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/sql-resources.md")
          )
        )
      ),
      tabItem(
        tabName = "database_overview",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/database-overview.md")
          )
        )
      ),
      tabItem(
        tabName = "tabclue1",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/clue-1.md")
          )
        ),
        sqlEmulatorUI(id = "clue1_sql_editor")
      ),
      tabItem(
        tabName = "tabclue2",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/clue-2.md")
          )
        ),
        sqlEmulatorUI(id = "clue2_sql_editor")
      ),
      tabItem(
        tabName = "tabclue3",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/clue-3.md")
          )
        ),
        sqlEmulatorUI(id = "clue3_sql_editor")
      ),
      tabItem(
        tabName = "tabclue4",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/clue-4.md")
          )
        ),
        sqlEmulatorUI(id = "clue4_sql_editor")
      ),
      tabItem(
        tabName = "tabclue5",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/clue-5.md")
          )
        ),
        sqlEmulatorUI(id = "clue5_sql_editor")
      ),
      tabItem(
        tabName = "tabclue6",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/clue-6.md")
          )
        ),
        sqlEmulatorUI(id = "clue6_sql_editor")
      ),
      tabItem(
        tabName = "login",
        fluidRow(
          column(
            width = 8,
            offset = 2,
            includeMarkdown("markdowns/login-page.md")
          )
        ),
        fluidRow(
          column(
            width = 6,
            offset = 3,
            br(),
            wellPanel(
              fluidRow(
                textInput(
                  inputId = "username",
                  label = "username",
                  placeholder = "username"
                )
              ),
              fluidRow(
                textInput(
                  inputId = "password",
                  label = "password",
                  placeholder = "password"
                )
              ),
              fluidRow(
                column(
                  width = 12,
                  align = "right",
                  actionButton(
                    inputId = "login_button",
                    label = "Login",
                    icon = icon("sign-in"),
                    class = "btn-secondary"
                  )
                )
              )
            )
          )
        ),
        fluidRow(
          column(
            width = 6,
            offset = 3,
            align = "center",
            uiOutput(outputId = "response_img")
          )
        )
      )
    )
  )
)
