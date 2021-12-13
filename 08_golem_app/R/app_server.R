#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here

  observeEvent(input$sign_out, {
    polished::sign_out_from_shiny(session)
    session$reload()
  })
}
