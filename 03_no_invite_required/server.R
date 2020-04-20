server <- function(input, output, session) {

  observeEvent(input$sign_out, {

    sign_out_from_shiny(session)
    session$reload()

  })

  output$secure_content <- renderPrint({
    session$userData$user()
  })

}

secure_server(server)
