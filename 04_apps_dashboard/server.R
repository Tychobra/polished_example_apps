server <- function(input, output, session) {

  # get all users for all apps
  user_apps <- reactive({
    hold_user_uid <- session$userData$user()$user_uid

    app_ids <- db_conn %>%
      tbl(dbplyr::in_schema("polished", "app_users")) %>%
      filter(user_uid == hold_user_uid) %>%
      collect() %>%
      pull("app_uid")

    db_conn %>%
      tbl(dbplyr::in_schema("polished", "apps")) %>%
      filter(uid %in% app_ids) %>%
      collect() %>%
      pull("app_name")
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
    app_id = "basic_insurer_dashboard",
    user_apps = user_apps
  )

  callModule(
    app_box_module,
    id = "interest_rate_walk",
    app_id = "interest_rate_walk",
    user_apps = user_apps
  )

}

secure_server(server)
