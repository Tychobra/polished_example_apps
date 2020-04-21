

ui <- fluidPage(
  fluidRow(
    column(
      6,
      h1("Custom Sign In Example"),
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
  sign_in_page_ui = source("custom_sign_in.R", local = TRUE)$value
)