#######################################################
# gskew()
# Computes the skew
#######################################################

gskew = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  n = sum(freq)
  s = sqrt(gvar(lower, upper, freq))
  x = gmean(lower, upper, freq)
  middle = (lower+upper)/2
  res = sum(freq*(middle - x)^3)/(n*s^3)
  return(res)
}
