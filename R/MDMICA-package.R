#' MDMICA: A package for independent component analysis via mutual dependence measures
#'
#' The MDMICA package provides independent component analysis methods based on mutual dependence measures.
#' 
#' @section Applying mutual dependence measures: 
#' The mutual dependence measures include:
#' \itemize{ 
#'   \item distance-based energy statistics
#'   \itemize{
#'     \item asymmetric measure \eqn{\mathcal{R}_n} based on distance covariance \eqn{\mathcal{V}_n}
#'     \item symmetric measure \eqn{\mathcal{S}_n} based on distance covariance \eqn{\mathcal{V}_n}
#'     \item simplified complete measure \eqn{\mathcal{Q}_n^\star} based on incomplete V-statistics
#'   }
#' }
#' \itemize{  
#'   \item kernel-based maximum mean discrepancies
#'   \itemize{
#'     \item d-variable Hilbert--Schmidt independence criterion dHSIC\eqn{_n} based on
#'       Hilbert--Schmidt independence criterion HSIC\eqn{_n} 
#'   }
#' }
#'
#' @section Initializing local optimization methods: 
#' The initialization methods include:
#' \itemize{
#'   \item Latin hypercube sampling 
#'   \item Bayesian optimization 
#' }
#'
#' @name MDMICA-package
#'
#' @aliases MDMICA
#'
#' @docType package
#'
#' @title Independent Component Analysis via Mutual Dependence Measures
#'
#' @author Ze Jin \email{zj58@cornell.edu},
#'   David S. Matteson \email{matteson@cornell.edu}

NULL 
