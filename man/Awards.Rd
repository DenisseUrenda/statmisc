\name{Awards}
\alias{Awards}
\docType{data}
\title{
Golden Globe Awards
}
\description{
Dataset containing information regarding the golden glove awards from 1994 to 2020.
}
\usage{data("Awards")}
\format{
  A data frame with 7991 observations on the following 7 variables.
  \describe{
    \item{\code{year_film}}{Year at which film was screened}
    \item{\code{year_award}}{Year at which ceremony happened}
    \item{\code{ceremony}}{Number of ceremony}
    \item{\code{category}}{Nomination category}
    \item{\code{nominee}}{Name of nominee}
    \item{\code{film}}{Film's title}
    \item{\code{win}}{Does the film won?}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
\link{https://www.kaggle.com/datasets/unanimad/golden-globe-awards}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Awards)
str(Awards)
}
\keyword{datasets}
