\name{skew}
\alias{skew}
\title{
Skewness
}
\description{
Computes the skewness of a sample.
}
\usage{
skew(x, na.rm = FALSE)
}
\arguments{
  \item{x}{
a  numeric vector.
}
  \item{na.rm}{
logical value indicating whether \code{NA} values must be removed before calculation.
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
See also \code{\link{kurtosis}}.
}
\examples{
x = rnorm(100)
skew(x)

x[sample(1:100, 10)] = NA
skew(x)
skew(x, TRUE)
}
