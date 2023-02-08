#######################################################
# gmean()
# Computes the mean
#######################################################

gmean = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  mid = (lower + upper)/2
  x = sum(mid*freq)/sum(freq)
  return(x)
}
