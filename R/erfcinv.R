#' Inverse Error Function Complement
#'
#' The inverse error function complement
#' [https://en.wikipedia.org/wiki/Error_function](https://en.wikipedia.org/wiki/Error_function)
#'
#' @param sigma The partition coefficient of an eluted peak
#' @return The inverse error function complimentary
#' @export
#'
erfcinv <- function (sigma) qnorm(sigma/2, lower = FALSE)/sqrt(2)


#' Error Function
#'
## if you want the so-called 'error function'
erf <- function(x) 2 * pnorm(x * sqrt(2)) - 1

#' Complementary Error Function
#'
## (see Abramowitz and Stegun 29.2.29)
## and the so-called 'complementary error function'
erfc <- function(x) 2 * pnorm(x * sqrt(2), lower = FALSE)


#' Inverse Error Function
#'
#'
## and the inverses
erfinv <- function (x) qnorm((1 + x)/2)/sqrt(2)
