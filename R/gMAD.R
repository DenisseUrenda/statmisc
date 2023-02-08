#######################################################
# gMAD()
# Computes the mean absolute deviation
#######################################################

gMAD = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  n = sum(freq)
  middle = (lower+upper)/2
  x = gmean(lower, upper, freq)
  res = sum(freq*abs(middle - x))/n
  return(res)
}
