\name{range}
\alias{range}
\title{
Range
}
\description{
Computes the range of a sample.
}
\usage{
range(x, na.rm = FALSE)
}
%- maybe also 'usage' for other objects documented here.
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
x = rnorm(100)
statmisc::range(x)
diff(base::range(x))
}

