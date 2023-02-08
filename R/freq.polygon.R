
#################################################
# Frequency polygon
#################################################

freq.polygon = function(x, main = NULL, xlab = NULL,  ylab = NULL, ylim = NULL,
                        type = NULL, col = 1, pch = 19, breaks = "Sturges",
                        dig.lab = 3, include.lowest = TRUE, right = TRUE,
                        grid = TRUE, at = 1, col.grid = "lightgray", lty.grid = 3,
                        cumu = FALSE, ylab2 = NULL, per = seq(0, 100, 25),
                        dens = FALSE, add = FALSE, ...){

  if(is.null(type)) type = "b"
  if(is.null(main)) main = "Polygon of frequencies"
  if(is.null(xlab)) xlab = "x"
  if(is.null(ylab))
    ylab = ifelse(cumu & dens,"Cumulative relative frequency",
                  ifelse(cumu & !dens, "Cumulative frequency",
                         ifelse(!cumu & dens, "Relative frequency", "Frequency")))
  if(is.null(ylab2)) ylab2 = "Cumulative percentage"

  if(!is.numeric(x)) stop("x must be numeric vector")
  if(!(type %in% c("l","b","c","o")))
    stop('Invalid type value. Must be one of "l","b","c","o"')
  if(!(length(at) == 1 & at %in% c(1,2))) stop("Invalid at value. Must be 1 or 2")
  if(!(length(cumu) == 1 & is.logical(cumu)))
    stop("cumu must be a logical value.")
  if(!(is.numeric(per) & min(per)>=0 & max(per)<=100))
    stop("per must be a numeric vector with values between 0 and 100.")
  if(!(length(add) == 1 & is.logical(add))) stop("add must be a logical value.")
  if(!(length(grid) == 1 & is.logical(grid))) stop("grid must be a logical value.")

  if(cumu) par(mar = c(5,4,4,4)+0.1)
  if(!(is.numeric(breaks) & length(breaks) > 1))
    breaks = hist(x, breaks = breaks, plot = F,
                  include.lowest = include.lowest, right = right)$breaks

  x.split = cut(x, breaks = breaks, dig.lab = dig.lab,
                include.lowest = include.lowest, right = right)
  tab = table(x.split)
  if(dens) tab = prop.table(tab)

  width = diff(breaks); width = c(width[1],width)
  if(cumu){
    middle = breaks - width*0.5
    freq = c(0,cumsum(as.numeric(tab)))
  }else{
    middle = c(breaks - width*0.5,(breaks[length(breaks)] + width[length(width)]*0.5))
    freq = c(0,as.numeric(tab),0)
  }

  if(is.null(ylim)) ylim = c(0,max(freq))*1.055

  if(add){
    lines(middle, freq, type = type, col = col, pch = pch)
  }else{
    plot(middle, freq, type = type, xaxt = "n", main = main, xlab = xlab, ylab = ylab,
            ylim = ylim, col = col, pch = pch, ...)
    axis(1, at = middle)
    if(grid & at == 1) grid(NA, NULL, col = col.grid, lty = lty.grid)
    if(grid & at == 2) abline(h = per*max(freq)/100, col = col.grid,
                              lty = lty.grid, lwd = par("lwd"))
    if(cumu){
      axis(4, at = per*max(freq)/100, labels = per)
      mtext(ylab2, 4, srt = 90, line = 3)
    }
  }
}
