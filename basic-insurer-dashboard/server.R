
server <- function(input, output, session) {
  
  callModule(
    profile_module,
    id = "profile"
  )
  
  val_tbl <- reactive({
    req(input$val_date)
    loss_run(input$val_date)
  })
  
  source("server/01-dashboard-srv.R", local = TRUE)
  source("server/02-changes-srv.R", local = TRUE)

}

secure_server(server)
