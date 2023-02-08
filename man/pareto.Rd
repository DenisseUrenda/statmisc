\name{pareto}
\alias{pareto}

\title{
Pareto Chart
}
\description{
Creates a pareto chart.
}
\usage{
pareto(x, per = seq(0, 100, 20), main = NULL, xlab = NULL, ylab = NULL,
       ylab2 = NULL, ylim = NULL, col = NULL, type.line = "b",
       lty.line = 1, pch.line = 19, col.line = 1, lwd.line = 1,
       box = TRUE, grid = FALSE, at = 1, col.grid = "lightgray",
       lty.grid = 3, ...)
}
\arguments{
  \item{x}{
  An object of class table containing absolute frequencies for each class.
  }
  \item{per}{
  A numeric vector indicating the percentage to be marked at the right y axis.
  Defaults to \code{seq(0, 100, 20)}.
  }
  \item{main}{
    An overal title for the plot.
  }
  \item{xlab}{
  A title for the x axis.
  }
  \item{ylab}{
  A title for the y axis.
  }
  \item{ylab2}{
  A title for the right y axis.
  }
  \item{ylim}{
  Numeric vector giving the x and y coordinates range for the y axis.
  }
  \item{col}{
  A vector of colors for the bars or bar components.
  }
  \item{type.line}{
  Type of line to drawn for the cumulative polygon of frequency. Defaults to \code{"b"}.
  }
  \item{lty.line}{
  Line type for the cumulative polygon of frequency.Defaults to \code{1}.
  }
  \item{pch.line}{
  Plotting symbol for the cumulative polygon of frequency. Defaults to \code{19}.
  }
  \item{col.line}{
  Color for the cumulative polygon of frequency. Defaults to \code{1}.
  }
  \item{lwd.line}{
  Width for the cumulative polygon of frequency. Defaults to \code{1}.
  }
  \item{box}{
  Logical value indicating whether box will be drawn. Defaults to \code{TRUE}.
  }
  \item{grid}{
  Logical value indicating whether grid will be drawn. Defaults to \code{FALSE}.
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
  Line type for the grid. Defaults to \code{3}.
  }
  \item{\dots}{
  Other arguments to be passed to barplot.
  }
}
\details{}
\value{}
\references{}
\author{}
\note{}
\seealso{}
\examples{
x = sample(LETTERS[1:5], 50, TRUE, 5:1)
x = table(x)
pareto(x)
# Different cumulative percentages
pareto(x, xlab = "Categories", per = seq(0,100,25), grid = TRUE, at = 2)
}

