

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
  sign_in_page_ui = sign_in_ui_default(
    color = "#006CB5",
    company_name = "Tychobra",
    logo_top = tags$img(
      src = "images/tychobra_logo_white.png",
      alt = "Tychobra Logo",
      style = "width: 125px; margin-top: 30px; margin-bottom: 30px;"
    ),
    logo_bottom = tags$img(
      src = "images/tychobra_logo_blue_co_name.png",
      alt = "Tychobra Logo",
      style = "width: 300px; margin-bottom: 15px;"
    ),
    icon_href = "images/tychobra_icon_blue.png",
    background_image = "images/milky_way.jpeg"
  )
)
