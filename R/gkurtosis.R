#######################################################
# gkurtosis()
# Computes the kurtosis
#######################################################

gkurtosis = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  n = sum(freq)
  s = sqrt(gvar(lower, upper, freq))
  x = gmean(lower, upper, freq)
  middle = (lower+upper)/2
  res = sum(freq*(middle - x)^4)/(n*s^4) - 3
  return(res)
}
