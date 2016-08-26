#' @export
#'
up <- function(app = "hydrodynamic-radius", pkg = "radii") {
    if (missing(app)) message(paste0("The default is : ", app))

    # locate all the shiny apps that exist
    validapps <- list.files(system.file("shiny-apps", package = pkg))

    validappsMsg <-
    paste0("Valid apps are: '", paste(validapps, collapse = "', '"), "'")

    # if an invalid app is given, throw an error
    if (!nzchar(app) || !app %in% validapps) {
        stop('Please run `up()` with a valid app as an argument.n',
            validappsMsg, call. = FALSE)
    }

    # find and launch the app
    appDir <- system.file("shiny-apps", app, package = pkg)
    shiny::runApp(appDir, display.mode = "normal")
}
