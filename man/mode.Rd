\name{mode}
\alias{mode}
\title{
Mode
}
\description{
Computes the mode of a sample.
}
\usage{
mode(x, na.rm = FALSE)
}
\arguments{
  \item{x}{
a  numeric vector.
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

}
\examples{
# No mode
x = sample(1:10, 5)
mode(x)
# Usual mode
x = sample(1:10, 50, TRUE)
mode(x)
# Two modes
x = c(1:10,5,10)
mode(x)
# Categorical variable
x = sample(c("F","M","O"), 50, TRUE)
mode(x)
}

