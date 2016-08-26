#' Partition Coefficient
#'
#' The partition coefficient (s) was calculated for each
#' standard protein from the observed elution volume (Vs), total column volume (Vt),
#' and void volume (Vo)
#'
#' @param vs The observed elution volume
#' @param vo The void volume
#' @param vt The total column volume
#' @return sigma: The partition coefficient of the elucted peak/fraction
#' @examples
#' ## calculate the partition coefficient of an elucted peak on a column with total
#' column volume of 120 mL and void volume of 39 mL.
#'
#' partition(vs =65, vo=39, vt=120)
#' @export
#'
partition_coef <- function(vs=65, vo=8.21, vt=21.54) (vs - vo)/(vt - vo);


#' stokes radius
#'
#' Stokes radius is also call hydrodynamic radius for polymer.
#'
#' @export
radius <- function(ve, x) {

}
