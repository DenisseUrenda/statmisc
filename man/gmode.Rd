\name{gmode}
\alias{gmode}

\title{
Grouped Data Mode
}
\description{
Computes the mode of grouped data.
}
\usage{
gmode(lower, upper, freq)
}
\arguments{
  \item{lower}{
  Numeric vector containing lower limits of each class.
}
  \item{upper}{
  Numeric vector containing upper limits of each class. Second to last element
  must be identical to first to second-last elements in \code{lower}.
}
  \item{freq}{
  Integer vector containing frequencies of each class. Must contain nonnegative
  integers.
}
}
\details{
  All three \code{lower}, \code{upper}, and \code{freq} must have the same length.
  If mode is in the first class, \code{NA} will be returned.
}
\value{}
\references{}
\author{}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
See Also as \code{\link{gmeasures}}.
}
\examples{
# Single mode
l = seq(5,40,5)
u = seq(10,45,5)
f = c(5,5,5,10,15,5,5,5)
gmode(l,u,f)

# Multiple modes
f = c(12,33,15,8,3,33,5,10)
gmode(l,u,f)

# No mode
f = rep(10, length(l))
gmode(l,u,f)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
