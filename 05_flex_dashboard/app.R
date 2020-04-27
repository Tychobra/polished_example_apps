library(shiny)

ui <- tagList(
  tags$head(
    tags$style("
      body {
        margin: 0;
        padding: 0;
        overflow: hidden
      }
    "),
  ),
  tags$iframe(
    src = "flex_dash.html",
    height = "100%",
    width = "100%",
    style="height: 100%; width: 100%; overflow: hidden; position: absolute; top:0; left: 0; right: 0; bottom:0",
    frameborder="0"
  )
)

ui <- polished::secure_ui(
  ui,
  custom_admin_button_ui = shiny::actionButton(
    "polished-go_to_admin_panel",
    "Admin Panel",
    icon = shiny::icon("cog"),
    style = "position: fixed; bottom: 15px; right: 15px; color: #FFFFFF; z-index: 9999; background-color: #0000FF; padding: 15px;"
  )
)

server <- polished::secure_server(function(input, output, session) {})

shinyApp(ui, server, onStart = function() {
  library(polished)

  # configure the global sessions when the app initially starts up.
  polished::global_sessions_config(
    app_name = "05_flex_dashboard",
    api_key = app_config$api_key
  )
})
