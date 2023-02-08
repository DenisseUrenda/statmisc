\name{random}
\alias{random}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Random Sample Generator
}
\description{
generates random samples of size \code{n} usign the inverse transform method.
}
\usage{
random(n, dist = "normal", ...)
}
\arguments{
  \item{n}{
positive integer indicating the size of the random sample.
}
  \item{dist}{
string indicating the name of the distribution to sample from. One of \code{"normal"}, \code{"exp"}, \code{"chi"}, \code{"gamma"}, \code{"beta"}, \code{"t"}, \code{"f"}, \code{"binomial"}, \code{"poisson"}, \code{"hyper"}, and \code{"geometric"}. Defaults to \code{"normal"}
}
  \item{\dots}{
named parameters of the distribution.
}
}
\details{
For specific parameters to be pass to \code{...}, consult the documentation of the distribution. For normal distribution, consult \code{\link{dnorm}}.
}
\value{
a numberic vector containing the random sample of size \code{n} drawn from the \code{dist} distribution.
}
\references{
}
\author{
}
\note{
}

\seealso{
See also \code{\link{distribution}}.
}
\examples{
x = random(100, "normal", mu = 10, sd = 5)
plot(x)
}

