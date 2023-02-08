#######################################################
# gmode()
# Computes the mode(s)
#######################################################

gmode = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  ks = which(freq == max(freq))
  if(length(ks) == length(freq)) return(NA)

  x = NULL
  for(k in ks){
    w = upper[k]-lower[k]
    if((k == 1 | k == length(freq))) result = NA
    else result = lower[k] + (freq[k]-freq[k-1])/(2*freq[k]-freq[k-1]-freq[k+1])*w
    x = c(x, result)
  }
  if(length(x) > 1 & any(is.na(x))) x = na.omit(x)[1]
  return(x)
}
