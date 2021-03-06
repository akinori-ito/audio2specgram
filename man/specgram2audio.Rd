% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/specgram.R
\name{specgram2audio}
\alias{specgram2audio}
\title{specgram2audio
Inverse Short Term Fourier Transform from time-frequency representation}
\usage{
specgram2audio(specgram, config)
}
\arguments{
\item{specgram}{a matrix of a time-frequency representation}

\item{config}{configuration list generated by stftconfig().}
}
\value{
a vector of time series.
}
\description{
specgram2audio
Inverse Short Term Fourier Transform from time-frequency representation
}
