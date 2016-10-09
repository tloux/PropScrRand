\name{getVar}
\alias{getVar}
\title{
Compute Propensity Score Variance
}
\description{
Given a data set and vector of indices for treated units, computes the variance of the propensity score fitted via logistic regression.
}
\usage{
getVar(covs, tIndex)
}

\arguments{
  \item{covs}{A data frame of baseline covariates.}
  \item{tIndex}{A vector indicating which units are to receive treatment.}
}

\value{
Returns the variance of the fitted propensity scores.
}

\author{
Travis M. Loux
}
