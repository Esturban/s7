% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/title.R
\name{title_server}
\alias{title_server}
\title{Title creation for the server-side function}
\usage{
title_server(
  input,
  output,
  session,
  title_ = NULL,
  size = NULL,
  align = F,
  side = c("left", "center", "right", "justify")
)
}
\arguments{
\item{input}{list of inputs used in the shiny application session}

\item{output}{list of outputs used the shiny application session}

\item{session}{The shiny app session object}

\item{title_}{The title as a string}

\item{size}{The size of the alignment object}

\item{align}{Logical. Determine whether or not we want to align the title with a specified  \code{side}}

\item{side}{Selected side for rendering the title with alignment}
}
\description{
THe server-side function for the title that is established a
`shinyMobile` application
}
