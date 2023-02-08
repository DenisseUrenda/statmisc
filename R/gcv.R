#######################################################
# gcv()
# Computes the coefficient of variation
#######################################################

gcv = function(lower, upper, freq, per = TRUE){

  if(!(is.logical(per) & length(per) == 1)) stop("per must be a logical value.")

  gcheck(lower, upper, freq)

  s = sqrt(gvar(lower, upper, freq))
  x = gmean(lower, upper, freq)
  if(per) return(s/x*100)
  else return(s/x)
}
