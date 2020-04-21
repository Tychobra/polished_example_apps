

header <- dashboardHeader(
  title = "Polished",
  polished::profile_module_ui("profile")
)

sidebar <- dashboardSidebar(
  disable = TRUE
)


body <- dashboardBody(
  tags$head(
    tags$link(
      rel = "shortcut icon",
      type = "image/png",
      href = "https://res.cloudinary.com/dxqnb8xjb/image/upload/v1510505618/tychobra-logo-blue_d2k9vt.png"
    ),
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")#,
    #polished::firebase_dependencies(),
    #polished::firebase_init(app_config$firebase)
  ),
  shinyjs::useShinyjs(),
  fluidRow(
    app_box_module_ui(
      id = "basic_insurer_dashboard",
      app_name = "Basic Claims Analytics Dashboard",
      width = 6,
      img_src = "images/basic_insurer_dashboard.png",
      more_info = column(
        12,
        h4(
          style = "line-height: 1.25",
          "Basic Claims Analytics Dashboard"
        ),
        tags$ul(
          tags$li("View insurance claims at different points in time"),
          tags$li("Filter claims by state and claim status"),
          tags$li("Analyze frequency, severity, and changes in claim values over time"),
          tags$li("Download the claims for further analysis on your computer")
        )
      ),
      app_href = "https://tychobra.shinyapps.io/04_basic_insurer_dashboard"
    ),
    app_box_module_ui(
      id = "interest_rate_walk",
      app_name = "Interest Rate Walk",
      width = 6,
      img_src = "images/interest_rate_walk_dashboard.png",
      more_info = column(
        12,
        h4(
          style = "line-height: 1.25",
          "Interest Rate Walk Dashboard"
        ),
        tags$ul(
          tags$li("View tables of interest rate data over time"),
          tags$li("Run a Cox-Ingersoll-Ross random walk or a bootstrap resampling of treasury yield changes"),
          tags$li("View historical treasury yields to reference for parameter selection during resampling")
        )
      ),
      app_href = "https://tychobra.shinyapps.io/04_interest_rate_walk"
    )
  )
)

ui <- dashboardPage(
  header,
  sidebar,
  body,
  skin = "black"
)

secure_ui(
  ui,
  sign_in_page_ui = source("R/0_ui_sign_in.R", local = TRUE)$value
)
