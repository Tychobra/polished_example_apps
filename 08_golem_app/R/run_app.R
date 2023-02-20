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

  addResourcePath("www", system.file("app/www", package = "polishedGolemApp"))

  polished::polished_config(
    app_name = "08_golem_app",
    api_key = "<your polished API key>"
  )



  with_golem_options(
    app = shinyApp(
      ui = polished::secure_ui(
        app_ui,
        sign_in_page_ui = polished::sign_in_ui_default(
          logo_bottom = tags$img(src="www/favicon.ico")
        )
      ),
      server = polished::secure_server(app_server)
    ),
    golem_opts = list()
  )
}
