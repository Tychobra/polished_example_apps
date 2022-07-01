

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
    logo_top = tagList(
      tags$img(
        src = "images/tychobra_logo_white.png",
        alt = "Tychobra Logo",
        style = "width: 125px; margin-top: 30px; margin-bottom: 30px;"
      ),
      tags$script(src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r121/three.min.js"),
      tags$script(src="https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.waves.min.js"),
      tags$script('
        VANTA.WAVES({
          el: "body",
          mouseControls: true,
          touchControls: true,
          gyroControls: false,
          minHeight: 200.00,
          minWidth: 200.00,
          scale: 1.00,
          scaleMobile: 1.00,
          waveSpeed: 1.45
        })
      ')
    ),
    logo_bottom = tags$img(
      src = "images/tychobra_logo_blue_co_name.png",
      alt = "Tychobra Logo",
      style = "width: 300px; margin-bottom: 15px;"
    ),
    icon_href = "images/tychobra_icon_blue.png"#,
    #background_image = "images/milky_way.jpeg"
  )
)
