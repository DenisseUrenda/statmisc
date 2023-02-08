
random = function(n, dist = "normal", ...){

  if(!(is.numeric(x) & length(n) == 1 & n%%1 == 0 & n > 0))
    stop("n must be a positive integer.")
  if(!(is.character(dist) & length(dist) == 1))
    stop("dist must be a character string.")
  dist = stringr::str_to_lower(dist)
  list.icdf = list("normal" = qnorm, "exp" = qexp, "chi" = qchisq,
                   "gamma" = qgamma, "beta" = qbeta, "t" = qt, "f" = qf,
                   "binomial" = qbinom, "poisson" = "qpois",
                   "hyper" = qhyper, "geometric" = qgeom)
  if(!(dist %in% names(list.icdf))) stop("dist not available.")

  u = runif(n)
  icdf = list.icdf[[dist]]
  return(icdf(u, ...))
}
