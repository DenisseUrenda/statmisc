#######################################################
# gsd()
# Computes the standard deviation
#######################################################

gsd = function(lower, upper, freq){

  gcheck(lower, upper, freq)

  return(sqrt(gvar(lower, upper, freq)))
}
