% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tg_catches.R
\name{tg_catches}
\alias{tg_catches}
\title{Catches}
\usage{
tg_catches(cn.standardized = FALSE, lowercase = FALSE)
}
\arguments{
\item{cn.standardized}{Boolean, if FALSE (default) retains variable names as
delivered by the webserver otherwise mri-standaridzed variable names are used}

\item{lowercase}{Boolean, if TRUE, variable names are set to lower case. If FALSE,
names will be consitent with documentation.}
}
\value{
A dataframe
}
\description{
Catches
}
\examples{
df <- tg_catches()
}
