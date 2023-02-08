\name{MAD}
\alias{MAD}

\title{
Mean Absolute Deviation
}
\description{
Computes the mean absolute deviation using the \code{center} as the center of the sample.
}
\usage{
MAD(x, center = mean, na.rm = FALSE)
}
\arguments{
  \item{x}{
a  numeric vector.
}
  \item{center}{
function used to compute the center. Defaults to \code{mean}.
}
  \item{na.rm}{
logical value indicating whether \code{NA} values must be removed before calculation. Defaults to \code{FALSE}.
}
}
\details{

}
\value{
}
\references{
}
\author{
}
\note{
}

\seealso{
See also \code{\link{MMAD}}.
}
\examples{
x = rnorm(100)
sd(x)
MAD(x)
mean(abs(x-mean(x)))
}

