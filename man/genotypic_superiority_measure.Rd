% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genotypic_superiority_measure.R
\name{genotypic_superiority_measure}
\alias{genotypic_superiority_measure}
\title{Genotypic superiority measure}
\usage{
genotypic_superiority_measure(
  data,
  trait,
  genotype,
  environment,
  unit.correct = FALSE
)
}
\arguments{
\item{data}{a dataframe containing trait, genotype and environment.}

\item{trait}{colname of a column containing a numeric vector of interested trait to be analysized.}

\item{genotype}{colname of a column containing a character or factor vector labeling different genotypic varieties}

\item{environment}{colname of a column containing a character or factor vector labeling different environments}

\item{unit.correct}{logical, default is \code{FALSE}, returning the stability index with unit equals to squared unit of trait; when \code{TRUE}, returning stability index with the unit as same as unit of trait.'}
}
\value{
a data table with genotypic superiority measure
}
\description{
\code{genotypic_superiority_measure} calculate variance of a genotype across environments.
}
\details{
Genotypic superiority measure (Lin and Binns, 1988) is calculatd based on means square distance between maximum value of environment j and genotype i.
Variety with low genotypic superiority measure is considered as stable.
Equation of genotypic superiority measure can be found in vignette file.
}
\examples{
data(Data)
res <- genotypic_superiority_measure(
 data = Data,
 trait = "Yield",
 genotype = "Genotype",
 environment = "Environment",
 unit.correct = FALSE)
}
\references{
\insertRef{lin1988}{toolStability}
}
\author{
Tien-Cheng Wang
}
\keyword{dynamic}
\keyword{stability}
