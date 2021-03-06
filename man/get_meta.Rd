% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workhorse.R
\name{get_meta}
\alias{get_meta}
\title{Get metadata from the NBS website.}
\usage{
get_meta(
  what = c("toc", "prev"),
  database = c("fsnd", "hgnd", "fsjd", "hgjd", "fsyd", "hgyd"),
  language = c("en", "zh"),
  nap_control = nap(min = 0.5, max = 1)
)
}
\arguments{
\item{what}{either "toc" (i.e. table of contents) or "prev" (i.e. preview).}

\item{database}{the NBS database to be visited by the querier.
\itemize{
\item{\code{fs }}{for provincial databases.}
\item{\code{hg }}{for national databases.}
\item{\code{nd }}{for annual databases.}
\item{\code{jd }}{for quarterly databases.}
\item{\code{yd }}{for monthly databases.}
}}

\item{language}{either "en" (i.e. English) or "zh" (i.e. Chinese).}

\item{nap_control}{let the function take a nap in-between two query calls.
The nap length defaults to be a random number between 0.5s and 1s. See
\code{\link{nap}} for more details on how to control the pause. This makes
the querier less likely to be flagged by the anti-bot mechanism on the NBS
website.}
}
\value{
A dataframe that contains the metadata.
}
\description{
Retrieve the table of contents or the preview of all indicators
from a database.
}
\examples{
\dontrun{
 get_meta()
 get_meta("toc", "fsnd")
}
}
