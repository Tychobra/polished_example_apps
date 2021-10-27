#' Run the Shiny Application
#'
#' @param ... A series of options to be used inside the app.
#'
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
#' @importFrom polished global_sessions_config secure_ui secure_server
run_app <- function(
  ...
) {

  polished::global_sessions_config(
    app_name = "golem_polished_example",
    api_key = "<polished_API_key>"
  )

  with_golem_options(
    app = shinyApp(
      ui = polished::secure_ui(app_ui),
      server = polished::secure_server(app_server)
    ),
    golem_opts = list()
  )
}
