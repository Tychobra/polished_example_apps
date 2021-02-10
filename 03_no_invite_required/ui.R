

ui <- fluidPage(
  fluidRow(
    column(
      6,
      h1("No Invite Required"),
      br()
    ),
    column(
      6,
      br(),
      actionButton(
        "sign_out",
        "Sign Out",
        icon = icon("sign-out-alt"),
        class = "pull-right"
      )
    ),
    column(
      12,
      verbatimTextOutput("secure_content")
    )
  )
)

secure_ui(
  ui,
  sign_in_page_ui = polished::sign_in_ui_default(
    logo_top = tags$div(
      style = "width: 300px; max-width: 100%; color: #FFF;",
      class = "text-center",
      h1("No Invite", style = "margin-bottom: 0; margin-top: 30px;"),
      h1("Required", style = "margin-bottom: 30px; margin-top: 10px;")
    ),
    color = "#E75480"
  )
)
