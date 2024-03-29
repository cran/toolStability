% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecovalence.R
\name{ecovalence}
\alias{ecovalence}
\title{Ecovalence}
\usage{
ecovalence(
  data,
  trait,
  genotype,
  environment,
  unit.correct = FALSE,
  modify = FALSE
)
}
\arguments{
\item{data}{a dataframe containing trait, genotype and environment.}

\item{trait}{colname of a column containing a numeric vector of interested trait to be analysized.}

\item{genotype}{colname of a column containing a character or factor vector labeling different genotypic varieties}

\item{environment}{colname of a column containing a character or factor vector labeling different environments}

\item{unit.correct}{logical, default is \code{FALSE}, returning the stability index with unit equals to squared unit of trait; when \code{TRUE}, returning stability index with the unit as same as unit of trait.}

\item{modify}{logical, default is \code{FALSE}, returning the original ecovalence; when \code{TRUE}, returning modified ecovalence in consideration of number of environment.}
}
\value{
a data table with ecovalence
}
\description{
\code{ecovalence} calculate genetic and environmental interaction.
}
\details{
Ecovalence (Wricke, 1962) is calcualted based on square and sum up the genotype–environment
interaction all over the environment.
Variety with low ecovalence is considered as stable.
Equation of ecovalence can be found in vignette file.
}
\examples{
data(Data)
eco.valence <- ecovalence(
 data = Data,
 trait = "Yield",
 genotype = "Genotype",
 environment = "Environment",
 unit.correct = FALSE,
 modify=FALSE)
}
\references{
\insertRef{wricke1962}{toolStability}
}
\author{
Tien-Cheng Wang
}
\keyword{dynamic}
\keyword{stability}
