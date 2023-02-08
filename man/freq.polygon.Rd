\name{freq.polygon}
\alias{freq.polygon}
\title{
Polygon of Frequencies
}
\description{
Plots a polygon of frequencies.
}
\usage{
freq.polygon(x, main = NULL, xlab = NULL,  ylab = NULL, ylim = NULL,
             type = NULL, col = 1, pch = 19, breaks = "Sturges",
             dig.lab = 3, include.lowest = TRUE, right = TRUE,
             grid = TRUE, at = 1, col.grid = "lightgray", lty.grid = 3,
             cumu = FALSE, ylab2 = NULL, per = seq(0, 100, 25),
             dens = FALSE, add = FALSE, ...)
}
\arguments{
  \item{x}{
A numeric vector.
}
  \item{main}{
An overall title for the plot.
}
  \item{xlab}{
A title for the x axis.
}
  \item{ylab}{
A title for the y axis.
}
  \item{ylim}{
Numeric vector giving the x and y coordinates range for the y axis.
}
  \item{type}{
Plot type for the polygon.
}
  \item{col}{
Color for the polygon. Defaults to \code{1}.
}
  \item{pch}{
Plotting symbols for the polygon. Defaults to \code{19}.
}
  \item{breaks}{
Breakpoints. Same as in \code{hist}.
}
  \item{dig.lab}{
Number of digits used in formatting the break numbers. Defaults to \code{3}.
}
  \item{include.lowest}{
Logical value indicating whether an \code{x[i]} equal to the lowest (or highest,
for \code{right = FALSE}) 'breaks' value should be included. Defaults to \code{TRUE}.
}
  \item{right}{
Should the right limit be closed?  Defaults to \code{TRUE}.
}
  \item{grid}{
Logical value indicating whether grid will be drawn. Defaults to \code{TRUE}.
}
  \item{at}{
  1 or 2. Which vertical axis to place the grid? \code{at = 1} will place grid
  based on ticks in left y axis. \code{at = 2} will place grid based on tikcs in
  right y axis. Defaults to \code{1}.
}
  \item{col.grid}{
Color for the grid. Defaults to \code{"lightgray"}.
}
  \item{lty.grid}{
Line type for the grid. Defaults to \code{1}.
}
  \item{cumu}{
Logical value indicating whether the frequencies must be cumulative.Defaults to
\code{FALSE}.
}
  \item{ylab2}{
If \code{cumu = TRUE}, a title for the right y axis.
}
  \item{per}{
If \code{cumu = TRUE}, a numeric vector indicating the percentage to be marked at
the right y axis.  Defaults to \code{seq(0, 100, 25)}.
}
  \item{dens}{
Logical value indicating whether to compute density (relative frequencies) instead of frequencies. Defaults to \code{FALSE}.
}
  \item{add}{
Logical value indicating whether the polygon will be add to an existent plot. Defaults to \code{FALSE}.
}
  \item{\dots}{
Other arguments to be passed to plot.
}

}
\details{
When \code{add = TRUE}, features as \code{grid}, \code{per}, and \code{ylab2} will not be implemented.
}
\value{}
\references{}
\author{}
\note{}
\seealso{See also \code{\link{hist}}.}
\examples{
x = rnorm(200, mean = 10)
freq.polygon(x)
# Adding it to an existing plot
hist(x, col = 3)
freq.polygon(x, add = TRUE)
# Polygon of cumulative frequencies
freq.polygon(x, cumu = TRUE, col = 2, pch = 18)
}

