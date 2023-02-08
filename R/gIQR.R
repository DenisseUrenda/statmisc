#######################################################
# gIQR()
# Computes the inter-quatile range
#######################################################

gIQR = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  Q13 = gpercentile(lower, upper, freq, c(0.25,0.75))
  names(Q13) = NULL
  return(diff(Q13))
}
