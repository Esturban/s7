% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radio.R, R/radio2.R
\name{radio_server}
\alias{radio_server}
\title{Framework 7 radio button server-side logic}
\usage{
radio_server(input, output, session, ...)

radio_server(input, output, session, ...)
}
\arguments{
\item{input}{list of inputs used in the shiny application session}

\item{output}{list of outputs used the shiny application session}

\item{session}{The shiny app session object}

\item{...}{
  Arguments passed on to \code{\link[shinyMobile:radio]{shinyMobile::f7Radio}}, \code{\link[shinyMobile:radio]{shinyMobile::f7Radio}}
  \describe{
    \item{\code{inputId}}{Radio input id.}
    \item{\code{label}}{New radio label}
    \item{\code{choices}}{New list of choices.}
    \item{\code{selected}}{New selected element. NULL by default.}
  }}
}
\description{
The server-side function used in
shinyMobile developed shiny applications

The server-side function used in
shinyMobile developed shiny applications
}
