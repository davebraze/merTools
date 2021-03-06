% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merExtract.R
\name{REextract}
\alias{REextract}
\title{Extracts random effects}
\usage{
REextract(merMod)
}
\arguments{
\item{merMod}{a merMod object from the lme4 package}
}
\value{
a data frame with the following columns
\describe{
  \item{groupFctr}{The name of the grouping factor associated with the random effects}
  \item{groupID}{The level of the grouping factor associated with the random effects}
  \item{'term'}{One column per random effect, the name is derived from the merMod}
  \item{'term'_se}{One column per random effect, the name is derived from the merMod}
}
}
\description{
Extracts random effect terms from an lme4 model
}
\examples{
require(lme4)
m2 <- lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
rfx <- REextract(m2)
#Note the column names
head(rfx)
}
