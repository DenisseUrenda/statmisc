#################################################
# Pareto chart
#################################################

pareto = function(x, per = seq(0,100,20), main = NULL, xlab = NULL, ylab = NULL,
                  ylab2 = NULL, ylim = NULL, col = NULL, type.line = "b",
                  lty.line = 1, pch.line = 19, col.line = 1, lwd.line = 1,
                  box = TRUE, grid = FALSE, at = 1, col.grid = "lightgray",
                  lty.grid = 3, ...){

  if(is.null(main)) main = "Pareto Chart"
  if(is.null(xlab)) xlab = "x"
  if(is.null(ylab)) ylab = "Frequency"
  if(is.null(ylab2)) ylab2 = "Cumulative percentage"
  if(is.null(ylim)) ylim = c(0,sum(x)*1.055)
  if(is.null(col)) col = hcl.colors(length(x),"Teal")

  if(class(x)!="table") stop("x must be an object of class table.")
  if(!(type.line %in% c("l","b","c","o")))
    stop('Invalid type value. Must be one of "l","b","c","o"')
  if(!(is.numeric(per) & min(per)>=0 & max(per)<=100))
    stop("per must be a numeric vector with values between 0 and 100.")
  if(!(length(box) == 1 & is.logical(box))) stop("box must be a logical value.")
  if(!(length(grid) == 1 & is.logical(grid))) stop("grid must be a logical value.")
  if(!(length(at) == 1 & at %in% c(1,2))) stop("Invalid at value. Must be 1 or 2")

  if(main == "") par(mar=c(5,5,1,5)) else par(mar=c(5,5,3,5))
  b = barplot(sort(x, decreasing = T), main = main, xlab = xlab, ylab = ylab,
              ylim = ylim, col = col, ...)
  lines(b, cumsum(sort(x, decreasing = T)), type = type.line, lty = lty.line,
        pch = pch.line, col = col.line, lwd = lwd.line)
  axis(4, at = per*sum(x)/100, labels = per)
  mtext(ylab2, side = 4, line = 3)
  if(box) box()
  if(grid){
    if(at == 1) grid(NA, ny = NULL, col = col.grid, lty = lty.grid)
    else if(at == 2) abline(h = per*sum(x)/100, col = col.grid,
                            lty = lty.grid, lwd = par("lwd"))
    b = barplot(sort(x, decreasing = T), col = col, add = T, ...)
    lines(b, cumsum(sort(x, decreasing = T)), type = type.line, lty = lty.line,
          pch = pch.line, col = col.line, lwd = lwd.line)
  }
}
