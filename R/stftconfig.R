#' stftconfig
#' Configuration of audio2specgram() and specgram2audio().
#'
#' @param width number of sample points in an analysis window
#' @param frameshift number of sample points of frame shift
#' @param towindow an window function applied when calculating STFT.
#'     The following functions can be used as 'towindow' and 'fromwindow' parameters:
#'     rectwin: rectangle window
#'     sinewin: sine window
#'     hamming: hamming window (from signal package)
#'     hanning: hanning window (from signal package)
#' @param fromwindow an window function applied when calculating inverse STFT
#' @return a list of configuration parameters
#' @export
stftconfig <- function(width, frameshift, towindow=hanning, fromwindow=rectwin) {
  return(list(
    width=width,
    frameshift=frameshift,
    towindow=towindow,
    fromwindow=fromwindow))
}

#' rectwin
#' @param width number of samples of the window function
#' @retuen a vector of rectangular window value (=all 1)
#' @export
rectwin <- function(width) {
  return(rep(1,width))
}

#' sinewin
#' @param width number of samples of the window function
#' @retuen a vector of sine window value
#' @export
sinewin <- function(width) {
  pi <- 3.14159265358
  return (sin((0:(width-1))/width*pi))
}


