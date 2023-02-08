\name{Crime}
\alias{Crime}
\docType{data}
\title{
Crimes in Boston
}
\description{
Dataset containing Boston Police Department (BPD) records regarding incidents occurred from Jun 14, 2015 to Sep 3, 2018.
}
\usage{data("Crime")}
\format{
  A data frame with 319,073 observations on the following 17 variables.
  \describe{
    \item{\code{INCIDENT_NUMBER}}{Incident number.}
    \item{\code{OFFENSE_CODE}}{Offense code.}
    \item{\code{OFFENSE_CODE_GROUP}}{Offense code group.}
    \item{\code{OFFENSE_DESCRIPTION}}{Offense description.}
    \item{\code{DISTRICT}}{Boston district.}
    \item{\code{REPORTING_AREA}}{Reporting area.}
    \item{\code{SHOOTING}}{Shooting involved?}
    \item{\code{OCCURRED_ON_DATE}}{Date of occurrence.}
    \item{\code{YEAR}}{Year of occurrence.}
    \item{\code{MONTH}}{Month of occurrence.}
    \item{\code{DAY_OF_WEEK}}{Day of the week of occurrence.}
    \item{\code{HOUR}}{Hour of occurrence.}
    \item{\code{UCR_PART}}{Uniform crime reporting part.}
    \item{\code{STREET}}{Street name of occurrence.}
    \item{\code{Lat}}{Lattitute.}
    \item{\code{Long}}{Longitude.}
    \item{\code{Location}}{Location coordinates.}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
\link{https://www.kaggle.com/datasets/AnalyzeBoston/crimes-in-boston}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Crime)
str(Crime)
}
\keyword{datasets}
