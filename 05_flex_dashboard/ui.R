ui <- tagList(
  tags$head(
    tags$style("
      body {
        margin: 0;
        padding: 0;
      }
    "),
  ),
  tags$iframe(
    src = "flex_dash.html",
    height = "100vh",
    width = "100%",
    style="height: 99vh; overflow: hidden",
    frameBorder="0"
  )
)

# pass your ui to "secure_ui()"
polished::secure_ui(
  ui,
  custom_admin_button_ui = shiny::actionButton(
    "polished-go_to_admin_panel",
    "Admin Panel",
    icon = shiny::icon("cog"),
    style = "position: fixed; bottom: 15px; right: 15px; color: #FFFFFF; z-index: 9999; background-color: #0000FF; padding: 15px;"
  )
)

