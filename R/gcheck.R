#######################################################
# gcheck()
# Check assumptions for lower, upper and freq arguments
#######################################################

gcheck = function(lower, upper, freq){
  if(!(is.numeric(lower) & is.numeric(upper) & is.numeric(freq)))
    stop("lower, upper and freq must be numeric vector")
  if(!(length(lower) == length(upper) & length(upper) == length(freq) & length(freq) > 1))
    stop("lower, upper and freq must have same length.")
  if(!all(freq >= 0 & freq %% 1 == 0))
    stop("freq must be a vector of non-negative integer values.")
  if(!all(upper - lower > 0)) stop("all class width must be positive.")
  if(!all(lower[-1] == upper[-length(upper)]))
    stop("All lower limits must match upper limits.")
}
