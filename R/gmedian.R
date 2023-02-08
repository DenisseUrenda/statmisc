#######################################################
# gmedian()
# Computes the median
#######################################################

gmedian = function(lower, upper, freq){
  gcheck(lower, upper, freq)
  x = gpercentile(lower, upper, freq, prob = 0.5)
  names(x) = NULL
  return(x)
}
