\name{Diet}
\alias{Diet}
\docType{data}
\title{
Diet comparison dataset
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("Diet")}
\format{
  A data frame with 78 observations on the following 7 variables.
  \describe{
    \item{\code{Person}}{Person's id.}
    \item{\code{gender}}{Person's gender.}
    \item{\code{Age}}{Person's age.}
    \item{\code{Height}}{Person's height in centimeters.}
    \item{\code{pre.weight}}{Person's weight before diet in kilograms.}
    \item{\code{Diet}}{Diet type.}
    \item{\code{weight6weeks}}{Person's weight after six weeks of being in a diet.}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
https://www.kaggle.com/datasets/alexandercox1234/3-diet-comparison
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Diet)
plot(Diet$Height, Diet$pre.weight)
}
\keyword{datasets}
