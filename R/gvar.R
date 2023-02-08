#######################################################
# gvar()
# Computes the variance
#######################################################

gvar = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  n = sum(freq)
  middle = (lower+upper)/2
  x = gmean(lower, upper, freq)
  res = sum(freq*(middle - x)^2)/(n-1)
  return(res)
}
