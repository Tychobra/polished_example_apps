server <- function(input, output, session) {

  # get all users for all apps
  user_apps <- reactive({
    #hold_user_uid <- session$userData$user()$user_uid

    c(
      "04_basic_insurer_dashboard",
      "04_interest_rate_walk"
    )
  })


  callModule(
    polished::profile_module,
    "profile"
  )

  token <- reactive({
    input$firebase_token
  })

  callModule(
    app_box_module,
    id = "basic_insurer_dashboard",
    app_id = "04_basic_insurer_dashboard",
    user_apps = user_apps
  )

  callModule(
    app_box_module,
    id = "interest_rate_walk",
    app_id = "04_interest_rate_walk",
    user_apps = user_apps
  )

}

secure_server(server)
