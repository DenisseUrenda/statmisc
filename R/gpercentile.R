#######################################################
# gpercentile()
# Compute the percentiles given in prob
#######################################################

gpercentile = function(lower, upper, freq, prob = c(0.25,0.5,0.75)){
  gcheck(lower, upper, freq)
  if(!is.numeric(prob)) stop("prob must be numeric.")
  if(!all(prob > 0 & prob < 1)) stop("prob must contain values between 0 and 1.")

  prob = round(prob,2)
  prob = unique(prob)*100
  n = sum(freq)
  cum = cumsum(freq)

  res = NULL
  for(p in prob){
    pos = p*n/100
    i = which(cum>=pos)[1]
    if(i == 1) result = NA
    else result = lower[i]+(pos-cum[i-1])/freq[i]*(upper[i]-lower[i])
    res = c(res,result)
  }
  names(res) = paste0(prob,"%")
  return(res)
}
