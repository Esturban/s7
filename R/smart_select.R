#'
#' Framework 7 select
#'
#' @description The framework 7 select input that
#' relies on the shinyMobile package to develop
#' a compatible UI useful in PWAs
#'
#' @param id  the namespace id of the select UI
#'
#'
#'@importFrom shiny NS
#'@importFrom shiny uiOutput
#'@export

smart_select_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("select"))
}


#' Framework 7 smart select server-side logic
#'
#'
#' @description The server-side function used in
#' shinyMobile developed shiny applications
#' @param input list of inputs used in the shiny application session
#' @param output list of outputs used the shiny application session
#' @param session The shiny app session object
#' @param label The label on the select UI
#' @param choices The choices available for the select UI
#' @param selected The option selected by default for the select UI
#' @param multiple Logical. Enable multiple selection of choices
#' @param openIn option for the method of opening smart select
#' @param width Width of the select UI
#'
#' @export
#' @importFrom shinyMobile f7Select


smart_select_server <-
  function(input,
           output,
           session,
           label,
           choices,
           selected = NULL,
           multiple = F,
           width = NULL,
           openIn = c('page', 'sheet', 'popup', 'popover')) {
    session$ns -> ns
    label = to_reactive(label)
    choices = to_reactive(choices)
    selected = to_reactive(selected)
    multiple = to_reactive(multiple)
    width = to_reactive(width)
    openIn = to_reactive(openIn)

    output[['select']] <- renderUI({
      shinyMobile::f7SmartSelect(
        inputId = ns("select"),
        label = label(),
        choices = choices(),
        selected = selected(),
        multiple = multiple(),
        width = width(),
        openIn = openIn()
      )
    })

    return(list(selected = reactive(input[['select']])))

  }