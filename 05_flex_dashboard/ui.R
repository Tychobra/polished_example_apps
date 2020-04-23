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
polished::secure_ui(ui)
