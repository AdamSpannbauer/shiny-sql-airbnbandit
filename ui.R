library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  skin = "black",
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
      ),
      tags$meta(
        name = "title",
        content = "SQL AirbnBandit!"
      ),
      tags$meta(
        name = "description",
        content = "Hunt down the AirbnBandit armed with a SQL database, a series of clues, and your own ingenuity!"
      ),
      tags$meta(
        property = "og:type",
        content = "website"
      ),
      tags$meta(
        property = "og:url",
        content = "https://spannbaueradam.shinyapps.io/sql-airbnbandit/"
      ),
      tags$meta(
        property = "og:title",
        content = "SQL AirbnBandit!"
      ),
      tags$meta(
        property = "og:description",
        content = "Hunt down the AirbnBandit armed with a SQL database, a series of clues, and you're own ingenuity!"
      ),
      tags$meta(
        property = "og:image",
        content = "social-preview.png"
      ),
      tags$meta(
        property = "twitter:card",
        content = "summary_large_image"
      ),
      tags$meta(
        property = "twitter:url",
        content = "https://spannbaueradam.shinyapps.io/sql-airbnbandit/"
      ),
      tags$meta(
        property = "twitter:title",
        content = "SQL AirbnBandit!"
      ),
      tags$meta(
        property = "twitter:description",
        content = "Hunt down the AirbnBandit armed with a SQL database, a series of clues, and your own ingenuity!"
      ),
      tags$meta(
        property = "twitter:image",
        content = "social-preview.png"
      ),
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
        sqlEmulatorUI(id = "clue1_sql_editor", correct_answer = "T")
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
        sqlEmulatorUI(id = "clue2_sql_editor", correct_answer = "V")
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
        sqlEmulatorUI(id = "clue3_sql_editor", correct_answer = "E")
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
        sqlEmulatorUI(id = "clue4_sql_editor", correct_answer = "EN")
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
        sqlEmulatorUI(id = "clue5_sql_editor", correct_answer = "S")
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
        sqlEmulatorUI(id = "clue6_sql_editor", correct_answer = "S")
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
