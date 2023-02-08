\name{Population}
\alias{Population}
\docType{data}
\title{
Population by Country
}
\description{
Dataset containing various indicators for 235 countries around the world at 2020.
}
\usage{data("Population")}
\format{
  A data frame with 235 observations on the following 11 variables.
  \describe{
    \item{\code{Country}}{Country name}
    \item{\code{Population}}{Population}
    \item{\code{Yearly.Change}}{Yearly population change in percentage}
    \item{\code{Net.Change}}{Net yearly population change}
    \item{\code{Density}}{Population density in person/km^2}
    \item{\code{Land}}{Land area in terms of kilometer square}
    \item{\code{Migrants}}{Number of migrants}
    \item{\code{Fertility}}{Fertility or the growth rate}
    \item{\code{Age}}{Median age lifespan}
    \item{\code{Urban}}{Urban population in percentage}
    \item{\code{World.Share}}{Population contributed to the world's share in percentage}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
\link{https://www.kaggle.com/datasets/tanuprabhu/population-by-country-2020}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Population)
str(Population)
}
\keyword{datasets}
